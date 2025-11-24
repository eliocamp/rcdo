# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.

#' @param attributes STRING - Comma-separated list of attributes.
#'
#' @export
#' @rdname showattribute
cdo_showattribute <- function(ifile, attributes = NULL) {
  cdo(operator = operators$showattribute,
      input = list(ifile),
      params = list(attributes = attributes),
      output = c()
  )
}
