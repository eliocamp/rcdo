## This file was created automatically, do not edit by hand.
#' gridboxsum
#'
#' Statistical values over grid boxes
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nx, INTEGER - Number of grid boxes in x direction
#' @param ny, INTEGER - Number of grid boxes in y direction
#'
#' @export
cdo_gridboxsum <- function(ifile, nx = NULL, ny = NULL, ofile = NULL) {
  cdo(operator = operators$gridboxsum,
      input = list(ifile),
      params = list(nx = nx, ny = ny),
      output = ofile
  )
}
