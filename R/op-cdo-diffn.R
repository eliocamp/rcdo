# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.

#' @param maxcount INTEGER - Stop after maxcount different fields
#' @param abslim FLOAT - Limit of the maximum absolute difference (default: 0)
#' @param rellim FLOAT - Limit of the maximum relative difference (default: 1)
#' @param names STRING - Consideration of the variable names of only one input file (left/right) or the intersection of both (intersect).
#'
#' @export
#' @rdname diff
cdo_diffn <- function(ifile1, ifile2, maxcount = NULL, abslim = NULL, rellim = NULL, names = NULL) {
  cdo(operator = operators$diffn,
      input = list(ifile1, ifile2),
      params = list(maxcount = maxcount, abslim = abslim, rellim = rellim, names = names),
      output = c()
  )
}
