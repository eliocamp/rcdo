# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param x FLOAT - Precipitation threshold (unit: mm; default: x = 50 mm)
#' @param freq STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecarx5day
cdo_etccdi_rx5day <- function(ifile, x = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_rx5day,
      input = list(ifile),
      params = list(x = x, freq = freq),
      output = c(ofile)
  )
}
