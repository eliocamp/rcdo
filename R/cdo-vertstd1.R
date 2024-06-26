## This file was created automatically, do not edit by hand.
#' vertstd1
#'
#' Vertical statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param weights, BOOL - weights=FALSE disables weighting by layer thickness [default: weights=TRUE]
#'
#' @export
cdo_vertstd1 <- function(ifile, weights = NULL, ofile = NULL) {
  cdo(operator = operators$vertstd1,
      input = list(ifile),
      params = list(weights = weights),
      output = ofile
  )
}
