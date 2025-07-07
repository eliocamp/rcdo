#' Manage CDO options
#'
#' Set the options of operations.
#'
#' @param operation operation to add options to.
#' @param options character vector with CDO options.
#'
#' @details
#' `cdo_options_use()` takes an operation and adds a set of options to be used
#' in that operation.
#' `cdo_options_set()` sets the default options that all operations should use
#' by default. You can retrieve the default options with `cdo_options_get()`
#' or clear all default options with `cdo_options_clear()` or `cdo_options_set(NULL)`.
#'
#'
#' @export
#' @rdname cdo_options
cdo_options_use <- function(operation, options) {
  operation$options <- options
  operation
}

rcdo_options <- "rcdo_options"

#' @export
#' @rdname cdo_options
cdo_options_set <- function(options) {
  return(invisible(options(rcdo_options = options)))
}


#' @export
#' @rdname cdo_options
cdo_options_get <- function(options) {
  getOption("rcdo_options")
}


#' @export
#' @rdname cdo_options
cdo_options_clear <- function() {
  cdo_options_set(NULL)
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
