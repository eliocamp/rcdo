## This file was created automatically, do not edit by hand.
#' gh2hl
#'
#' Vertical height interpolation
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param hlevels, FLOAT - Comma-separated list of height levels in meter
#'
#' @export
cdo_gh2hl <- function(ifile, hlevels = NULL, ofile = NULL) {
  cdo(operator = operators$gh2hl,
      input = list(ifile),
      params = list(hlevels = hlevels),
      output = c(ofile)
  )
}
