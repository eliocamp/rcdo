## This file was created automatically, do not edit by hand.
#' subc
#'
#' Arithmetic with a constant
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param c, FLOAT - Constant
#'
#' @export
cdo_subc <- function(ifile, c = NULL, ofile = NULL) {
  cdo(operator = operators$subc,
      input = list(ifile),
      params = list(c = c),
      output = c(ofile)
  )
}
