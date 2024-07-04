## This file was created automatically, do not edit by hand.
#' eca_r75p
#'
#' Moderate wet days wrt 75th percentile of reference period
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_eca_r75p <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_r75p,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
