## This file was created automatically, do not edit by hand.
#' vertvar
#'
#' Vertical statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param weights, BOOL - weights=FALSE disables weighting by layer thickness [default: weights=TRUE]
#'
#' @export
cdo_vertvar <- function(ifile, weights = NULL, ofile = NULL) {
  cdo(operator = operators$vertvar,
      input = list(ifile),
      params = list(weights = weights),
      output = ofile
  )
}
