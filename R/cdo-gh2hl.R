## This file was created automatically, do not edit by hand.
#' gh2hl
#'
#' Vertical height interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param hlevels, FLOAT - Comma-separated list of height levels in meter
#'
#' @export
cdo_gh2hl <- function(ifile, hlevels = NULL, ofile = NULL) {
  cdo(operator = operators$gh2hl,
      input = list(ifile),
      params = list(hlevels = hlevels),
      output = ofile
  )
}
