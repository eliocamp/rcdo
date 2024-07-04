## This file was created automatically, do not edit by hand.
#' enscrps
#'
#' Ensemble validation tools
#'
#' @param ifiles Character vector with the path to the input files.
#' @param obase String with the basename of the output files.

#'
#' @export
cdo_enscrps <- function(ifiles, obase = NULL) {
  cdo(operator = operators$enscrps,
      input = as.list(ifiles),
      params = NULL,
      output = c(obase)
  )
}
