## This file was created automatically, do not edit by hand.
#' etccdi_csdi
#'
#' Cold
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_etccdi_csdi <- function(ifile1, ifile2, nday = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_csdi,
      input = list(ifile1,ifile2),
      params = list(nday = nday, freq = freq),
      output = ofile
  )
}
