## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param level FLOAT - Comma-separated list of target levels
#' @param zdescription STRING - Path to a file containing a description of the Z-axis
#' @param zvarname STRING - Use zvarname as the vertical 3D source coordinate instead of the 1D coordinate variable
#'
#' @export
#' @rdname intlevel
cdo_intlevel <- function(ifile, level = NULL, zdescription = NULL, zvarname = NULL, ofile = NULL) {
  cdo(operator = operators$intlevel,
      input = list(ifile),
      params = list(level = level, zdescription = zdescription, zvarname = zvarname),
      output = c(ofile)
  )
}
