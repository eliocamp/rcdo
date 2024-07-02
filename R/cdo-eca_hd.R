## This file was created automatically, do not edit by hand.
#' eca_hd
#'
#' Heating degree days per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param T1, FLOAT - Temperature limit (unit: °C; default: T1 = 17°C)
#' @param T2, FLOAT - Temperature limit (unit: °C; default: T2 = T1)
#'
#' @export
cdo_eca_hd <- function(ifile, T1 = NULL, T2 = NULL, ofile = NULL) {
  cdo(operator = operators$eca_hd,
      input = list(ifile),
      params = list(T1 = T1, T2 = T2),
      output = ofile
  )
}
