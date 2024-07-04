## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param R FLOAT - Precipitation threshold (unit: mm; default: R = 1 mm)
#' @param N INTEGER - Minimum number of days exceeded (default: N = 5)
#' @param freq STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecacwd
cdo_etccdi_cwd <- function(ifile, R = NULL, N = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_cwd,
      input = list(ifile),
      params = list(R = R, N = N, freq = freq),
      output = c(ofile)
  )
}
