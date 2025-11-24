# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param T FLOAT - Temperature threshold (unit: °C; default: T = 25°C)
#' @param freq STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecasu
cdo_eca_su <- function(ifile, T = NULL, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_su,
      input = list(ifile),
      params = list(T = T, freq = freq),
      output = c(ofile)
  )
}
