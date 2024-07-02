## This file was created automatically, do not edit by hand.
#' setzaxis
#'
#' Set z
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param zaxis, STRING - Z-axis description file or name of the target z-axis
#' @param zbot, FLOAT - Specifying the bottom of the vertical column. Must have the same units as z-axis.
#' @param ztop, FLOAT - Specifying the top of the vertical column. Must have the same units as z-axis.
#'
#' @export
cdo_setzaxis <- function(ifile, zaxis = NULL, zbot = NULL, ztop = NULL, ofile = NULL) {
  cdo(operator = operators$setzaxis,
      input = list(ifile),
      params = list(zaxis = zaxis, zbot = zbot, ztop = ztop),
      output = ofile
  )
}
