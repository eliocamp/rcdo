## This file was created automatically, do not edit by hand.
#' etccdi_cdd
#'
#' Consecutive dry days index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param R, FLOAT - Precipitation threshold (unit: mm; default: R = 1 mm)
#' @param N, INTEGER - Minimum number of days exceeded (default: N = 5)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_etccdi_cdd <- function(ifile, R = NULL, N = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_cdd,
      input = list(ifile),
      params = list(R = R, N = N, freq = freq),
      output = c(ofile)
  )
}
