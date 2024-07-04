## This file was created automatically, do not edit by hand.
#' intlevel
#'
#' Linear level interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param level, FLOAT - Comma-separated list of target levels
#' @param zdescription, STRING - Path to a file containing a description of the Z-axis
#' @param zvarname, STRING - Use zvarname as the vertical 3D source coordinate instead of the 1D coordinate variable
#'
#' @export
cdo_intlevel <- function(ifile, level = NULL, zdescription = NULL, zvarname = NULL, ofile = NULL) {
  cdo(operator = operators$intlevel,
      input = list(ifile),
      params = list(level = level, zdescription = zdescription, zvarname = zvarname),
      output = c(ofile)
  )
}
