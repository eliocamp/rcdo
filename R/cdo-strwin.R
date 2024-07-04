## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param v, FLOAT - Horizontal wind speed threshold (m/s, default v = 10.5 m/s)
#'
#' @export
#' @rdname strwin
cdo_strwin <- function(ifile, v = NULL, ofile = NULL) {
  cdo(operator = operators$strwin,
      input = list(ifile),
      params = list(v = v),
      output = c(ofile)
  )
}
