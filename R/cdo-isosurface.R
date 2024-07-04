## This file was created automatically, do not edit by hand.
#' isosurface
#'
#' Extract surface
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param isovalue, FLOAT - Isosurface value
#'
#' @export
cdo_isosurface <- function(ifile, isovalue = NULL, ofile = NULL) {
  cdo(operator = operators$isosurface,
      input = list(ifile),
      params = list(isovalue = isovalue),
      output = c(ofile)
  )
}
