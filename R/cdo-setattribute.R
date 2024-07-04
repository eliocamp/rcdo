## This file was created automatically, do not edit by hand.
#' setattribute
#'
#' Set attributes
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param attributes, STRING - Comma-separated list of attributes.
#'
#' @export
cdo_setattribute <- function(ifile, attributes = NULL, ofile = NULL) {
  cdo(operator = operators$setattribute,
      input = list(ifile),
      params = list(attributes = attributes),
      output = c(ofile)
  )
}
