## This file was created automatically, do not edit by hand.
#' eca_rx5day
#'
#' Highest five
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param x, FLOAT - Precipitation threshold (unit: mm; default: x = 50 mm)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_rx5day <- function(ifile, x = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_rx5day,
      input = list(ifile),
      params = list(x = x, freq = freq),
      output = ofile
  )
}
