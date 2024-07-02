## This file was created automatically, do not edit by hand.
#' addtrend
#'
#' Add or subtract a trend
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param equal, BOOL - Set to false for unequal distributed timesteps (default: true)
#'
#' @export
cdo_addtrend <- function(ifile, equal = NULL, ofile = NULL) {
  cdo(operator = operators$addtrend,
      input = list(ifile),
      params = list(equal = equal),
      output = ofile
  )
}
