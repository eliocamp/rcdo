## This file was created automatically, do not edit by hand.
#' fldmin
#'
#' Statistical values over a field
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param weights, BOOL - weights=FALSE disables weighting by grid cell area [default: weights=TRUE]
#' @param p, FLOAT - Percentile number in {0, ..., 100}
#'
#' @export
cdo_fldmin <- function(ifile, weights = NULL, p = NULL, ofile = NULL) {
  cdo(operator = operators$fldmin,
      input = list(ifile),
      params = list(weights = weights, p = p),
      output = ofile
  )
}
