## This file was created automatically, do not edit by hand.
#' eca_hwfi
#'
#' Warm spell days index wrt 90th percentile of reference period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_hwfi <- function(ifile1, ifile2, nday = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_hwfi,
      input = list(ifile1,ifile2),
      params = list(nday = nday, freq = freq),
      output = ofile
  )
}
