## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param attributes STRING - Comma-separated list of attributes.
#'
#' @export
#' @rdname setattribute
cdo_setattribute <- function(ifile, attributes = NULL, ofile = NULL) {
  cdo(operator = operators$setattribute,
      input = list(ifile),
      params = list(attributes = attributes),
      output = c(ofile)
  )
}
