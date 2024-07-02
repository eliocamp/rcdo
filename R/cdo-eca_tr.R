## This file was created automatically, do not edit by hand.
#' eca_tr
#'
#' Tropical nights index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param T, FLOAT - Temperature threshold (unit: °C; default: T = 20°C)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_tr <- function(ifile, T = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_tr,
      input = list(ifile),
      params = list(T = T, freq = freq),
      output = ofile
  )
}
