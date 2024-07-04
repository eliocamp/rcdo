## This file was created automatically, do not edit by hand.
#' rhopot
#'
#' Calculates potential density
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param pressure, FLOAT - Pressure in bar (constant value assigned to all levels)
#'
#' @export
cdo_rhopot <- function(ifile, pressure = NULL, ofile = NULL) {
  cdo(operator = operators$rhopot,
      input = list(ifile),
      params = list(pressure = pressure),
      output = c(ofile)
  )
}
