## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param weights BOOL - weights=FALSE disables weighting by grid cell area \[default: weights=TRUE\]
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
#' @rdname fldstat
cdo_fldmin <- function(ifile, weights = NULL, p = NULL, ofile = NULL) {
  cdo(operator = operators$fldmin,
      input = list(ifile),
      params = list(weights = weights, p = p),
      output = c(ofile)
  )
}
