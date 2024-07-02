## This file was created automatically, do not edit by hand.
#' gridarea
#'
#' Grid cell quantities
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param radius, FLOAT - Planet radius in meter
#'
#' @export
cdo_gridarea <- function(ifile, radius = NULL, ofile = NULL) {
  cdo(operator = operators$gridarea,
      input = list(ifile),
      params = list(radius = radius),
      output = ofile
  )
}
