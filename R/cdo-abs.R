## This file was created automatically, do not edit by hand.
#' abs
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_abs <- function(ifile, ofile = NULL) {
  cdo(operator = operators$abs,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
