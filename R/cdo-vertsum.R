## This file was created automatically, do not edit by hand.
#' vertsum
#'
#' Vertical statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param weights, BOOL - weights=FALSE disables weighting by layer thickness [default: weights=TRUE]
#'
#' @export
cdo_vertsum <- function(ifile, weights = NULL, ofile = NULL) {
  cdo(operator = operators$vertsum,
      input = list(ifile),
      params = list(weights = weights),
      output = c(ofile)
  )
}
