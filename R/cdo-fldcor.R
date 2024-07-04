## This file was created automatically, do not edit by hand.
#' fldcor
#'
#' Correlation in grid space
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_fldcor <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$fldcor,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
