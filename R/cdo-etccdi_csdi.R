## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param nday, INTEGER - Number of consecutive days (default: nday = 6)
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecacwfi
cdo_etccdi_csdi <- function(ifile1, ifile2, nday = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_csdi,
      input = list(ifile1, ifile2),
      params = list(nday = nday, freq = freq),
      output = c(ofile)
  )
}
