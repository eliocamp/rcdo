## This file was created automatically, do not edit by hand.
#' remap
#'
#' Grid remapping
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param grid, STRING - Target grid description file or name
#' @param weights, STRING - Interpolation weights (SCRIP NetCDF file)
#'
#' @export
cdo_remap <- function(ifile, grid = NULL, weights = NULL, ofile = NULL) {
  cdo(operator = operators$remap,
      input = list(ifile),
      params = list(grid = grid, weights = weights),
      output = c(ofile)
  )
}
