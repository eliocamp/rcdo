## This file was created automatically, do not edit by hand.
#' eca_sdii
#'
#' Simple daily intensity index per time period
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param R, FLOAT - Precipitation threshold (unit: mm; default: R = 1 mm)
#'
#' @export
cdo_eca_sdii <- function(ifile, R = NULL, ofile = NULL) {
  cdo(operator = operators$eca_sdii,
      input = list(ifile),
      params = list(R = R),
      output = c(ofile)
  )
}
