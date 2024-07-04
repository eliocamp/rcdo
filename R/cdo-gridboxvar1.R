## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nx INTEGER - Number of grid boxes in x direction
#' @param ny INTEGER - Number of grid boxes in y direction
#'
#' @export
#' @rdname gridboxstat
cdo_gridboxvar1 <- function(ifile, nx = NULL, ny = NULL, ofile = NULL) {
  cdo(operator = operators$gridboxvar1,
      input = list(ifile),
      params = list(nx = nx, ny = ny),
      output = c(ofile)
  )
}
