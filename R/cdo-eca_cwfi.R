## This file was created automatically, do not edit by hand.
#' eca_cwfi
#'
#' Cold
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_cwfi <- function(ifile1, ifile2, nday = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_cwfi,
      input = list(ifile1, ifile2),
      params = list(nday = nday, freq = freq),
      output = c(ofile)
  )
}
