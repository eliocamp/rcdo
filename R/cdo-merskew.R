## This file was created automatically, do not edit by hand.
#' merskew
#'
#' Meridional statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
cdo_merskew <- function(ifile, p = NULL, ofile = NULL) {
  cdo(operator = operators$merskew,
      input = list(ifile),
      params = list(p = p),
      output = c(ofile)
  )
}
