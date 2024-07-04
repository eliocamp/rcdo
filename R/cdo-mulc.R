## This file was created automatically, do not edit by hand.
#' mulc
#'
#' Arithmetic with a constant
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param c, FLOAT - Constant
#'
#' @export
cdo_mulc <- function(ifile, c = NULL, ofile = NULL) {
  cdo(operator = operators$mulc,
      input = list(ifile),
      params = list(c = c),
      output = c(ofile)
  )
}
