#' Execute a custom operator
#'
#' @param operator, a list created with `cdo_operator`.
#' @param input a list with the input files.
#' @param params a named vector of parameters.
#' @param output a vector of file name(s).
#'
#' @return
#' a cdo operation.
#'
#' @export
cdo <- function(operator, input, params = NULL, output = NULL) {
  n_input <- sum(vapply(input, get_output_length, numeric(1)))
  # check_input_exists(input, call = rlang::caller_env())

  operators_compatible <- operator$n_input == Inf || operator$n_input == n_input

  if (!operators_compatible) {
    cli::cli_abort("cdo_{operator$command} needs {operator$n_input} input stream{?s}, not {n_input}.")
  }

  # if (is.null(operator$params)) {
  #   stopifnot(`Missing parameters` = is.null(params))
  # } else {
  #   stopifnot(all(names(operator$params$required) %in% names(params)))
  #   stopifnot(all(names(params) %in% names(c(operator$params$required, operator$params$optional))))
  # }

  options <- collect_options(input)
  operation <-  structure(list(operator = operator,
                               params = params,
                               input = input,
                               output = output,
                               options = options),
                          class = "cdo_operation"
  )

  check_output(operation)
  return(operation)
}

maybe_list <- function(x) {
  if (is.operation(x)) return(list(x))
  x
}

#' @param command a string with the command used to run the operator
#' @param params a character vector with the name of the parametsr
#' @param n_input,n_output an integer with the number of input and ouput files
#' required by the operator
#'
#' @return
#' A list with elements comand, params, n_input and n_output.
#' @export
#' @rdname cdo
cdo_operator <- function(command, params, n_input, n_output) {
  params <- stats::setNames(params, params)
  list(
    command = command,
    params = list(optional = params),
    n_input = n_input,
    n_output = n_output
  )
}


check_input_exists <- function(input, call = rlang::caller_env()) {
  force(call)
  none <- lapply(input, function(x) {
    if (is.character(x)) {
      if (!file.exists(x)) {
        cli::cli_abort("File {x} doesn't exist.", call = call)
      }
    }
  })

  return(invisible(input))
}


collect_options <- function(inputs) {
  options <- lapply(inputs, function(x) {
    if (is.operation(x)) {
      return(x$options)
    }
    return(NULL)
  })

  unlist(options, recursive = FALSE)
}

#' Set output and options
#'
#' @param operation a CDO operation
#' @param output an output file or base string for output files
#'
#' @export
cdo_set_output <- function(operation, output) {
  operation$output <- output
  operation
}

#' @param options character vector with CDO options.
#' @export
#' @rdname cdo_set_output
cdo_options_use <- function(operation, options) {
  operation$options <- options
  operation
}

rcdo_options <- "rcdo_options"

#' @export
#' @rdname cdo_set_output
cdo_options_set <- function(options) {
  return(invisible(options(rcdo_options = options)))
}

#' @export
#' @rdname cdo_set_output
cdo_options_clear <- function() {
  return(invisible(options(rcdo_options = NULL)))
}


#' Manages the cache
#'
#' Manages whether cdo will try to recover existing files if available.
#'
#' @param cache either the location of the default cache or a list which is the
#' result of a previous `cdo_cache_set()` call.
#'
#' @details
#' When first executing the operation, `cdo_execute()` will create a ".hash" file matching the
#' output file name with a hash generated from the current cdo version, the
#' text of the command, the sum of the file sizes of the input files and the
#' most recent modified time of the input files.
#' The next time the same command is executed, if the cache is active,
#' `cdo_execute` will compute the same hash and compare it with the file and,
#' if it matches, it will return the output file without running the command.
#' Caching currently only works with operations with only one output file.
#'
#' These functions change the global options.
#' If used inside functions, it's generally a good idea to reset the original
#' values before exiting the function with `on.exit()`.
#'
#' @returns A list with the old values of the `rcdo_cache` and `rcdo_tmpdir` options.
#'
#' @examples
#' # Set the cache
#' old <- cdo_cache_set(cache = "data/cache")
#'
#' # Reset the cache to its previous state
#' cdo_cache_set(old)
#'
#' # Disable the cache
#' old <- cdo_cache_unset()
#'
#' # Again, reset the cache to its previous state.
#' cdo_cache_set(old)
#'
#' with_cache <- function(operation, cache) {
#'   old <- cdo_cache_set(cache)
#'   on.exit(cdo_cache_set(old))
#'
#'   # Rest of the function
#' }
#'
#' without_cache <- function(operation) {
#'   old <- cdo_cache_unset(cache)
#'   on.exit(cdo_cache_set(old))
#'
#'   # Rest of the function
#' }
#'
#' @export
#' @rdname cdo_cache
cdo_cache_set <- function(cache = tempdir()) {
  if (is.null(cache) || is.na(cache)) {
    cli::cli_abort("{.var cache} needs to be a non-null, non-NA string or a list returned by a previous {.fn cdo_cache_set} call.")
  }

  if (!is.list(cache)) {
    cache <- list(rcdo_cache = TRUE,
                  rcdo_tmpdir = cache)
  }

  options(cache)
}

#' @export
#' @rdname cdo_cache
cdo_cache_unset <- function() {
  old <- list(rcdo_cache = getOption("rcdo_cache"),
              rcdo_tmpdir = getOption("rcdo_tmpdir"))
  options(rcdo_cache = NULL)

  return(invisible(old))
}

is.operation <- function(x) {
  inherits(x, "cdo_operation")
}


#' @export
print.cdo_operation <- function(x,...) {
  cat("CDO command:\n")
  cat("  ", build_operation(x), "\n")
}


get_output_length <- function(x) {
  if (is.operation(x)) {
    return(x$operator$n_output)
  }

  return(length(x))
}



#' Execute a CDO operation
#'
#' @param operation a CDO operation
#' @param operations a list of CDO operations
#' @param output an output file or base string for output files. Defaults to
#' temporary files that will be deleted when its bond variable is garbage collected.
#' @param options character vector with CDO options.
#' @param verbose whether to print the command being executed.
#' @param cache whether to cache results. See [cdo_cache] for details.
#'
#'
#' @export
cdo_execute <- function(operation,
                        output = temp_output(operation, !cache),
                        options = NULL,
                        verbose = FALSE,
                        cache = getOption("rcdo_cache", default = FALSE)) {
  check_cdo_version(get_cdo())

  # Need to first build the hash to make temp output deterministic
  if (isTRUE(cache)) {
    if (operation$operator$n_output != 1) {
      warning("cache only works with oeprations with 1 file output.")
    }
    hash_current <- rlang::hash(list(get_cdo_version(get_cdo()),
                                     build_operation(operation, options = options),
                                     input_info(operation)))

    attr(operation, "hash") <- hash_current
  }

  if (is.null(operation$output)) {
    operation$output <- output
  }

  if (is.null(operation$output)) {
    stop("Missing output")
  } else {
    check_output(operation)
  }

  command <- build_operation(operation, options = options)

  if (isTRUE(cache)) {
    hash_file <- paste0(operation$output, ".hash")

    if (file.exists(operation$output)) {
      if (file.exists(hash_file)) {
        hash_previous <- readLines(hash_file)
        if (hash_previous == hash_current) {
          message("Returning previous version of file")

          attr(operation$output, "mtime") <- max(file.mtime(operation$output))
          attr(operation$output, "size") <- sum(file.size(operation$output))
          return(operation$output)
        }
      }
    }
  }

  if (verbose) {
    message("Running ", command)
  }

  result <- system(command, intern = operation$operator$n_output == 0)

  if (operation$operator$n_output == 0) {
    return(result)
  }

  if (operation$operator$n_output < Inf) {
    if (!all(file.exists(operation$output))) {
      stop("Operation failed")
    }
    attr(operation$output, "mtime") <- max(file.mtime(operation$output))
    attr(operation$output, "size") <- sum(file.size(operation$output))
  }

  if (isTRUE(cache)) {
    writeLines(hash_current, hash_file)
  }

  return(operation$output)
}

input_info <- function(x) {
  if (is.character(x)) {
    return(list(mtime = max(file.mtime(x)),
                size = sum(file.size(x))))
  }
  lapply(x$input, input_info)
}

#' @export
#' @rdname cdo_execute
cdo_execute_list <- function(operations,
                             output = NULL,
                             options = NULL,
                             verbose = FALSE,
                             cache = FALSE) {

  if (is.null(output)) {
    output <- lapply(operations, temp_output)
  }

  if (length(output) != length(operations)) {
    stop("Number of operations does not match number of outputs.")
  }

  out <- list()
  for (o in seq_along(operations)) {
    this <- cdo_execute(operations[[o]],
                        output = output[[o]],
                        options = options,
                        verbose = verbose,
                        cache = cache)
    out[[o]] <- this
  }
  names(out) <- names(operations)
  out
}

#' @import  R6
ephemeral_file <- R6::R6Class("ephemeral_file",
                              public = list(
                                file = NA,
                                initialize = function(file) {
                                  self$file <- file
                                  return(self)
                                },
                                print = function() {
                                  cat("File will be deleted when garbage collected\n")
                                }
                              ),

                              private = list(
                                finalize = function() {
                                  to_delete <- file.exists(self$file)
                                  if (any(to_delete)) {
                                    try(file.remove(self$files[to_delete]), silent = TRUE)
                                  }
                                }
                              )
)

make_ephemeral <- function(files) {
  attr(files, "ephemeral") <- lapply(files, function(file) ephemeral_file$new(file))
  files
}

cdo_tmpdir <- function() {
  getOption("rcdo_tmpdir", default = tempdir())
}

temp_output <- function(operation, ephemeral = TRUE) {
  if (operation$operator$n_output == Inf) {
    n <- 1
  } else {
    n <- operation$operator$n_output
  }

  files <- replicate(n, tempfile(tmpdir = cdo_tmpdir()))

  if (operation$operator$n_output == 1) {
    hash <- attr(operation, "hash")
    if (!is.null(hash)) {
      files <- file.path(cdo_tmpdir(), hash)
    }
  }

  if (ephemeral) {
    files <- make_ephemeral(files)
  }

  return(files)
}

check_output <- function(operation, call = rlang::caller_env()) {
  if (is.null(operation$output)) {
    return()
  }

  n_expected_output <- operation$operator$n_output
  n_output <- length(operation$output)

  if (n_expected_output == Inf) {
    n_expected_output <- 1
  }

  if (n_expected_output != n_output) {
    cli::cli_abort("The {.var cdo_{operation$operator$command}} requires {n_expected_output} {cli::qty(n_expected_output)} output{?s}, not {n_output}.",
                   call = call)
  }
}
