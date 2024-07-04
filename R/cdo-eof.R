## This file was created automatically, do not edit by hand.
#' eof
#'
#' Empirical Orthogonal Functions
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param neof, INTEGER - Number of eigen functions
#'
#' @export
cdo_eof <- function(ifile, neof = NULL, ofile1 = NULL, ofile2 = NULL) {
  cdo(operator = operators$eof,
      input = list(ifile),
      params = list(neof = neof),
      output = c(ofile1,ofile2)
  )
}
