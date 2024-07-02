## This file was created automatically, do not edit by hand.
#' fldcovar
#'
#' Covariance in grid space
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_fldcovar <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$fldcovar,
      input = list(ifile1, ifile2),
      params = NULL,
      output = ofile
  )
}
