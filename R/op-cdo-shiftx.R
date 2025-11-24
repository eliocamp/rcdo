# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nshift INTEGER - Number of grid cells to shift (default: 1)
#' @param cyclic STRING - If set, cells are filled up cyclic (default: missing value)
#' @param coord STRING - If set, coordinates are also shifted
#'
#' @export
#' @rdname shiftxy
cdo_shiftx <- function(ifile, nshift = NULL, cyclic = NULL, coord = NULL, ofile = NULL) {
  cdo(operator = operators$shiftx,
      input = list(ifile),
      params = list(nshift = nshift, cyclic = cyclic, coord = coord),
      output = c(ofile)
  )
}
