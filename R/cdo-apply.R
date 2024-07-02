## This file was created automatically, do not edit by hand.
#' apply
#'
#' Apply operators
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param operators, STRING - Blank-separated list of CDO operators.
#'
#' @export
cdo_apply <- function(ifile, operators = NULL, ofile = NULL) {
  cdo(operator = operators$apply,
      input = list(ifile),
      params = list(operators = operators),
      output = ofile
  )
}
