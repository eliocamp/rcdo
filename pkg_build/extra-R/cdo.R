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
#'
#' @export
cdo_execute <- function(operation,
                        output = temp_output(operation),
                        options = NULL,
                        verbose = FALSE) {
  if (is.null(operation$output)) {
    operation$output <- output
  }

  if (is.null(operation$output)) {
    stop("Missing output")
  } else {
    check_output(operation)
  }

  command <- build_operation(operation, options = options)
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

  return(operation$output)
}

#' @export
#' @rdname cdo_execute
cdo_execute_list <- function(operations,
                             output = NULL,
                             options = NULL,
                             verbose = FALSE) {
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
                        verbose = verbose)
    out[[o]] <- this
  }
  out
}

#' @import  R6
ephemeral_file <- R6::R6Class("ephemeral_file", public = list(
  file = NA,
  initialize = function(file) {
    self$file <- file
    return(self)
  },
  print = function() {
    cat("File will be deleted when garbage collected\n")
  },

  finalize = function() {
    to_delete <- file.exists(self$file)
    if (any(to_delete)) {
      try(file.remove(self$files[to_delete]), silent = TRUE)
    }
  })
)

make_ephemeral <- function(files) {
  attr(files, "ephemeral") <- lapply(files, \(file) ephemeral_file$new(file))
  class(files) <- c("ephemeral_files", class(files))
  files
}


temp_output <- function(operation) {
  if (operation$operator$n_output == Inf) {
    n <- 1
  } else {
    n <- operation$operator$n_output
  }

  files <- replicate(n, tempfile())
  make_ephemeral(files)
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
