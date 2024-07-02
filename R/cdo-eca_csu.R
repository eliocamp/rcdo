## This file was created automatically, do not edit by hand.
#' eca_csu
#'
#' Consecutive summer days index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param T, FLOAT - Temperature threshold (unit: °C; default: T = 25°C)
#' @param N, INTEGER - Minimum number of days exceeded (default: N = 5)
#'
#' @export
cdo_eca_csu <- function(ifile, T = NULL, N = NULL, ofile = NULL) {
  cdo(operator = operators$eca_csu,
      input = list(ifile),
      params = list(T = T, N = N),
      output = ofile
  )
}
