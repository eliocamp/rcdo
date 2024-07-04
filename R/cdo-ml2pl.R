## This file was created automatically, do not edit by hand.
#' ml2pl
#'
#' Vertical interpolation
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param plevels, FLOAT - Pressure levels in pascal
#' @param hlevels, FLOAT - Height levels in meter
#'
#' @export
cdo_ml2pl <- function(ifile, plevels = NULL, hlevels = NULL, ofile = NULL) {
  cdo(operator = operators$ml2pl,
      input = list(ifile),
      params = list(plevels = plevels, hlevels = hlevels),
      output = c(ofile)
  )
}
