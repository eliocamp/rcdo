## This file was created automatically, do not edit by hand.

#' @param options character vector with CDO options.
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
  return(invisible(options(rcdo_options = NULL)))
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
