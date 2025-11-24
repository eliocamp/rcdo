# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param value FLOAT - Value of the grid cell
#' @param cell INTEGER - Comma-separated list of grid cell indices
#' @param mask STRING - Name of the data file which contains the mask
#'
#' @export
#' @rdname setgridcell
cdo_setgridcell <- function(ifile, value = NULL, cell = NULL, mask = NULL, ofile = NULL) {
  cdo(operator = operators$setgridcell,
      input = list(ifile),
      params = list(value = value, cell = cell, mask = mask),
      output = c(ofile)
  )
}
