## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param epsilon, INTEGER - -1: forward transformation; 1: backward transformation
#'
#' @export
#' @rdname fourier
cdo_fourier <- function(ifile, epsilon = NULL, ofile = NULL) {
  cdo(operator = operators$fourier,
      input = list(ifile),
      params = list(epsilon = epsilon),
      output = c(ofile)
  )
}
