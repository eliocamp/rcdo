# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param T1 FLOAT - Temperature limit (unit: °C; default: T1 = 17°C)
#' @param T2 FLOAT - Temperature limit (unit: °C; default: T2 = T1)
#'
#' @export
#' @rdname ecahd
cdo_eca_hd <- function(ifile, T1 = NULL, T2 = NULL, ofile = NULL) {
  cdo(operator = operators$eca_hd,
      input = list(ifile),
      params = list(T1 = T1, T2 = T2),
      output = c(ofile)
  )
}
