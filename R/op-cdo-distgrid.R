# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param obase String with the basename of the output files.
#' @param nx INTEGER - Number of regions in x direction, or number of pieces for unstructured grids
#' @param ny INTEGER - Number of regions in y direction \[default: 1\]
#'
#' @export
#' @rdname distgrid
cdo_distgrid <- function(ifile, nx = NULL, ny = NULL, obase = NULL) {
  cdo(operator = operators$distgrid,
      input = list(ifile),
      params = list(nx = nx, ny = ny),
      output = c(obase)
  )
}
