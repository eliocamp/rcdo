## This file was created automatically, do not edit by hand.
#' remapdis
#'
#' Distance weighted average remapping
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param grid, STRING - Target grid description file or name
#' @param neighbors, INTEGER - Number of nearest neighbors [default: 4]
#' @param map3d, BOOL - Generate all mapfiles of the first 3D field
#'
#' @export
cdo_remapdis <- function(ifile, grid = NULL, neighbors = NULL, map3d = NULL, ofile = NULL) {
  cdo(operator = operators$remapdis,
      input = list(ifile),
      params = list(grid = grid, neighbors = neighbors, map3d = map3d),
      output = c(ofile)
  )
}
