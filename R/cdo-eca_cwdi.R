## This file was created automatically, do not edit by hand.
#' eca_cwdi
#'
#' Cold wave duration index wrt mean of reference period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param T, FLOAT - Temperature offset (unit: °C; default: T = 5°C)
#'
#' @export
cdo_eca_cwdi <- function(ifile1, ifile2, nday = NULL, T = NULL, ofile = NULL) {
  cdo(operator = operators$eca_cwdi,
      input = list(ifile1,ifile2),
      params = list(nday = nday, T = T),
      output = ofile
  )
}
