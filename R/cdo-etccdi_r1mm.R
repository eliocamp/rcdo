## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param x FLOAT - Daily precipitation amount threshold in \[mm\]
#' @param freq STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecapd
cdo_etccdi_r1mm <- function(ifile, x = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_r1mm,
      input = list(ifile),
      params = list(x = x, freq = freq),
      output = c(ofile)
  )
}
