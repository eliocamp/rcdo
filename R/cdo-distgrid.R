## This file was created automatically, do not edit by hand.
#' distgrid
#'
#' Distribute horizontal grid
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nx, INTEGER - Number of regions in x direction, or number of pieces for unstructured grids
#' @param ny, INTEGER - Number of regions in y direction [default: 1]
#'
#' @export
cdo_distgrid <- function(ifile, nx = NULL, ny = NULL, obase = NULL) {
  cdo(operator = operators$distgrid,
      input = list(ifile),
      params = list(nx = nx, ny = ny),
      output = c(obase)
  )
}
