## This file was created automatically, do not edit by hand.
#' ifnotthen
#'
#' Conditional select one field
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ifnotthen <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$ifnotthen,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
