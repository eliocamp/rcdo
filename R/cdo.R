cdo <- function(operator, input, params = NULL, output = NULL) {
  n_input <- sum(vapply(input, get_output_length, numeric(1)))
  stopifnot(operator$n_input == n_input)

  # if (is.null(operator$params)) {
  #   stopifnot(`Missing parameters` = is.null(params))
  # } else {
  #   stopifnot(all(names(operator$params$required) %in% names(params)))
  #   stopifnot(all(names(params) %in% names(c(operator$params$required, operator$params$optional))))
  # }

  options <- collect_options(input)

  structure(list(operator = operator,
                 params = params,
                 input = input,
                 output = output,
                 options = options),
            class = "cdo_operation"
  )
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
cdo_excecute <- function(operation, output = tempfile(), options = NULL) {
  if (!is.null(output)) {
    operation$output <- output
  }

  if (is.null(operation$output)) {
    stop("Missing output")
  }

  command <- build_operation(operation, options = NULL)
  system(command)
  return(output)
}
