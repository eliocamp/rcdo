## This file was created automatically, do not edit by hand.
#' remap
#'
#' Grid remapping
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param grid, STRING - Target grid description file or name
#' @param weights, STRING - Interpolation weights (SCRIP NetCDF file)
#'
#' @export
cdo_remap <- function(ifile, grid = NULL, weights = NULL, ofile = NULL) {
  cdo(operator = operators$remap,
      input = list(ifile),
      params = list(grid = grid, weights = weights),
      output = ofile
  )
}
