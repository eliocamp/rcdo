## This file was created automatically, do not edit by hand.
#' setgridcell
#'
#' Set the value of a grid cell
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param value, FLOAT - Value of the grid cell
#' @param cell, INTEGER - Comma-separated list of grid cell indices
#' @param mask, STRING - Name of the data file which contains the mask
#'
#' @export
cdo_setgridcell <- function(ifile, value = NULL, cell = NULL, mask = NULL, ofile = NULL) {
  cdo(operator = operators$setgridcell,
      input = list(ifile),
      params = list(value = value, cell = cell, mask = mask),
      output = ofile
  )
}
