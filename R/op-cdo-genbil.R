## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param grid STRING - Target grid description file or name
#' @param map3d BOOL - Generate all mapfiles of the first 3D field
#'
#' @export
#' @rdname remapbil
cdo_genbil <- function(ifile, grid = NULL, map3d = NULL, ofile = NULL) {
  cdo(operator = operators$genbil,
      input = list(ifile),
      params = list(grid = grid, map3d = map3d),
      output = c(ofile)
  )
}
