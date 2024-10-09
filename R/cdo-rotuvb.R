## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param u STRING - Pairs of zonal and meridional velocity components (use variable names or code numbers)
#' @param v STRING - Pairs of zonal and meridional velocity components (use variable names or code numbers)
#'
#' @export
#' @rdname rotuvb
cdo_rotuvb <- function(ifile, u = NULL, v = NULL, ofile = NULL) {
  cdo(operator = operators$rotuvb,
      input = list(ifile),
      params = list(u = u, v = v),
      output = c(ofile)
  )
}
