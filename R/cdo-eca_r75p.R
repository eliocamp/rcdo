## This file was created automatically, do not edit by hand.
#' eca_r75p
#'
#' Moderate wet days wrt 75th percentile of reference period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_eca_r75p <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_r75p,
      input = list(ifile1,ifile2),
      params = NULL,
      output = ofile
  )
}
