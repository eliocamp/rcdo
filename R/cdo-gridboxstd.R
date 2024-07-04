## This file was created automatically, do not edit by hand.
#' gridboxstd
#'
#' Statistical values over grid boxes
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nx, INTEGER - Number of grid boxes in x direction
#' @param ny, INTEGER - Number of grid boxes in y direction
#'
#' @export
cdo_gridboxstd <- function(ifile, nx = NULL, ny = NULL, ofile = NULL) {
  cdo(operator = operators$gridboxstd,
      input = list(ifile),
      params = list(nx = nx, ny = ny),
      output = c(ofile)
  )
}
