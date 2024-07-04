cdo <- function(operator, input, params = NULL, output = NULL) {
  n_input <- sum(vapply(input, get_output_length, numeric(1)))

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

collect_options <- function(inputs) {
  options <- lapply(inputs, function(x) {
    if (is.operation(x)) {
      return(x$options)
    }
    return(NULL)
  })

  unlist(options, recursive = FALSE)
}

#' Sets the output of a CDO operation
#'
#' @param operation a CDO operation
#' @param output an output file or base string for output files
#'
#' @export
cdo_set_output <- function(operation, output) {
  operation$output <- output
  operation
}

#' @export
cdo_set_options <- function(operation, options) {
  operation$options <- options
  operation
}


is.operation <- function(x) {
  inherits(x, "cdo_operation")
}


#' @export
print.cdo_operation <- function(x,...) {
  cat("CDO command:\n")
  cat("  ", build_operation(x))
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
#' @param output an output file or base string for output files
#'
#' @export
cdo_execute <- function(operation,
                        output = replicate(operation$operator$n_output, tempfile()),
                        options = NULL,
                        verbose = FALSE) {

  if (!is.null(output)) {
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
  system(command)

  if (!file.exists(output)) {
    stop("Operation failed")
  }
  attr(output, "mtime") <- file.mtime(output)
  attr(output, "size") <- file.size(output)
  return(output)
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
