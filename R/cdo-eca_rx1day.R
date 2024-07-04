## This file was created automatically, do not edit by hand.
#' eca_rx1day
#'
#' Highest one day precipitation amount per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_rx1day <- function(ifile, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_rx1day,
      input = list(ifile),
      params = list(freq = freq),
      output = c(ofile)
  )
}
