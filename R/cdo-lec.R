## This file was created automatically, do not edit by hand.
#' lec
#'
#' Comparison of a field with a constant
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param c, FLOAT - Constant
#'
#' @export
cdo_lec <- function(ifile, c = NULL, ofile = NULL) {
  cdo(operator = operators$lec,
      input = list(ifile),
      params = list(c = c),
      output = c(ofile)
  )
}
