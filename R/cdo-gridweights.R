## This file was created automatically, do not edit by hand.
#' gridweights
#'
#' Grid cell quantities
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param radius, FLOAT - Planet radius in meter
#'
#' @export
cdo_gridweights <- function(ifile, radius = NULL, ofile = NULL) {
  cdo(operator = operators$gridweights,
      input = list(ifile),
      params = list(radius = radius),
      output = c(ofile)
  )
}
