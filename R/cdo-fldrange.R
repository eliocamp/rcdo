## This file was created automatically, do not edit by hand.
#' fldrange
#'
#' Statistical values over a field
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param weights, BOOL - weights=FALSE disables weighting by grid cell area \[default: weights=TRUE\]
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
cdo_fldrange <- function(ifile, weights = NULL, p = NULL, ofile = NULL) {
  cdo(operator = operators$fldrange,
      input = list(ifile),
      params = list(weights = weights, p = p),
      output = c(ofile)
  )
}
