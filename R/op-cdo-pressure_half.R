## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname pressure
cdo_pressure_half <- function(ifile, ofile = NULL) {
  cdo(operator = operators$pressure_half,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
