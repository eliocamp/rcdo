## This file was created automatically, do not edit by hand.
#' etccdi_r1mm
#'
#' Precipitation days index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param x, FLOAT - Daily precipitation amount threshold in [mm]
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_etccdi_r1mm <- function(ifile, x = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_r1mm,
      input = list(ifile),
      params = list(x = x, freq = freq),
      output = ofile
  )
}
