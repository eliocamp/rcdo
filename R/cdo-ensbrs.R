## This file was created automatically, do not edit by hand.
#' ensbrs
#'
#' Ensemble validation tools
#'
#' @param ifiles Character vector with the path to the input files.
#' @param obase String with the basename of the output files.

#'
#' @export
cdo_ensbrs <- function(ifiles, obase = NULL) {
  cdo(operator = operators$ensbrs,
      input = as.list(ifiles),
      params = NULL,
      output = c(obase)
  )
}
