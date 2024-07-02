## This file was created automatically, do not edit by hand.
#' rotuvb
#'
#' Rotation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param u,v,..., STRING - Pairs of zonal and meridional velocity components (use variable names or code numbers)
#'
#' @export
cdo_rotuvb <- function(ifile, u,v,... = NULL, ofile = NULL) {
  cdo(operator = operators$rotuvb,
      input = list(ifile),
      params = list(u,v,... = u,v,...),
      output = ofile
  )
}
