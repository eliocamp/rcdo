## This file was created automatically, do not edit by hand.
#' adipot
#'
#' Potential temperature to in
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param pressure, FLOAT - Pressure in bar (constant value assigned to all levels)
#'
#' @export
cdo_adipot <- function(ifile, pressure = NULL, ofile = NULL) {
  cdo(operator = operators$adipot,
      input = list(ifile),
      params = list(pressure = pressure),
      output = c(ofile)
  )
}
