## This file was created automatically, do not edit by hand.
#' ml2hl
#'
#' Vertical interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param plevels, FLOAT - Pressure levels in pascal
#' @param hlevels, FLOAT - Height levels in meter
#'
#' @export
cdo_ml2hl <- function(ifile, plevels = NULL, hlevels = NULL, ofile = NULL) {
  cdo(operator = operators$ml2hl,
      input = list(ifile),
      params = list(plevels = plevels, hlevels = hlevels),
      output = ofile
  )
}
