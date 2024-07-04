## This file was created automatically, do not edit by hand.
#' timcovar
#'
#' Covariance over time
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_timcovar <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$timcovar,
      input = list(ifile1,ifile2),
      params = NULL,
      output = c(ofile)
  )
}
