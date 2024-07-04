## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param T, FLOAT - Temperature threshold (unit: °C; default: T = 25°C)
#' @param N, INTEGER - Minimum number of days exceeded (default: N = 5)
#'
#' @export
#' @rdname ecacsu
cdo_eca_csu <- function(ifile, T = NULL, N = NULL, ofile = NULL) {
  cdo(operator = operators$eca_csu,
      input = list(ifile),
      params = list(T = T, N = N),
      output = c(ofile)
  )
}
