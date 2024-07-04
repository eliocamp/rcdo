## This file was created automatically, do not edit by hand.
#' sethalo
#'
#' Set the bounds of a field
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param east, INTEGER - East halo
#' @param west, INTEGER - West halo
#' @param south, INTEGER - South halo
#' @param north, INTEGER - North halo
#' @param value, FLOAT - Fill value (default is the missing value)
#'
#' @export
cdo_sethalo <- function(ifile, east = NULL, west = NULL, south = NULL, north = NULL, value = NULL, ofile = NULL) {
  cdo(operator = operators$sethalo,
      input = list(ifile),
      params = list(east = east, west = west, south = south, north = north, value = value),
      output = c(ofile)
  )
}
