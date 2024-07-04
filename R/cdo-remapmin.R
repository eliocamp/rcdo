## This file was created automatically, do not edit by hand.
#' remapmin
#'
#' Remaps source points to target cells
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param grid, STRING - Target grid description file or name
#'
#' @export
cdo_remapmin <- function(ifile, grid = NULL, ofile = NULL) {
  cdo(operator = operators$remapmin,
      input = list(ifile),
      params = list(grid = grid),
      output = c(ofile)
  )
}
