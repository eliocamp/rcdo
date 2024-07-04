## This file was created automatically, do not edit by hand.
#' intyear
#'
#' Year interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param years, INTEGER - Comma-separated list or first/last[/inc] range of years
#'
#' @export
cdo_intyear <- function(ifile1, ifile2, years = NULL, obase = NULL) {
  cdo(operator = operators$intyear,
      input = list(ifile1,ifile2),
      params = list(years = years),
      output = c(obase)
  )
}
