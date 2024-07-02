## This file was created automatically, do not edit by hand.
#' eca_gsl
#'
#' Thermal Growing season length index
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param T, FLOAT - Temperature threshold (unit: °C; default: T = 5°C)
#' @param fland, FLOAT - Land fraction threshold (default: fland = 0.5)
#'
#' @export
cdo_eca_gsl <- function(ifile1, ifile2, nday = NULL, T = NULL, fland = NULL, ofile = NULL) {
  cdo(operator = operators$eca_gsl,
      input = list(ifile1, ifile2),
      params = list(nday = nday, T = T, fland = fland),
      output = ofile
  )
}
