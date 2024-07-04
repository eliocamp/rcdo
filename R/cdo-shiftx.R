## This file was created automatically, do not edit by hand.
#' shiftx
#'
#' Shift field
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nshift, INTEGER - Number of grid cells to shift (default: 1)
#' @param cyclic, STRING - If set, cells are filled up cyclic (default: missing value)
#' @param coord, STRING - If set, coordinates are also shifted
#'
#' @export
cdo_shiftx <- function(ifile, nshift = NULL, cyclic = NULL, coord = NULL, ofile = NULL) {
  cdo(operator = operators$shiftx,
      input = list(ifile),
      params = list(nshift = nshift, cyclic = cyclic, coord = coord),
      output = c(ofile)
  )
}
