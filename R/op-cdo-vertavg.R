## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param weights BOOL - weights=FALSE disables weighting by layer thickness \[default: weights=TRUE\]
#'
#' @export
#' @rdname vertstat
cdo_vertavg <- function(ifile, weights = NULL, ofile = NULL) {
  cdo(operator = operators$vertavg,
      input = list(ifile),
      params = list(weights = weights),
      output = c(ofile)
  )
}
