## This file was created automatically, do not edit by hand.
#' ensmax
#'
#' Statistical values over an ensemble
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
cdo_ensmax <- function(ifiles, p = NULL, ofile = NULL) {
  cdo(operator = operators$ensmax,
      input = as.list(ifiles),
      params = list(p = p),
      output = c(ofile)
  )
}
