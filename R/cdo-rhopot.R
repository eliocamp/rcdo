## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param pressure, FLOAT - Pressure in bar (constant value assigned to all levels)
#'
#' @export
#' @rdname rhopot
cdo_rhopot <- function(ifile, pressure = NULL, ofile = NULL) {
  cdo(operator = operators$rhopot,
      input = list(ifile),
      params = list(pressure = pressure),
      output = c(ofile)
  )
}
