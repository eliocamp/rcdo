## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param obase String with the basename of the output files.
#' @param years, INTEGER - Comma-separated list or first/last\[/inc\] range of years
#'
#' @export
#' @rdname intyear
cdo_intyear <- function(ifile1, ifile2, years = NULL, obase = NULL) {
  cdo(operator = operators$intyear,
      input = list(ifile1, ifile2),
      params = list(years = years),
      output = c(obase)
  )
}
