## This file was created automatically, do not edit by hand.
#' adipot
#'
#' Potential temperature to in
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param pressure, FLOAT - Pressure in bar (constant value assigned to all levels)
#'
#' @export
cdo_adipot <- function(ifile, pressure = NULL, ofile = NULL) {
  cdo(operator = operators$adipot,
      input = list(ifile),
      params = list(pressure = pressure),
      output = ofile
  )
}
