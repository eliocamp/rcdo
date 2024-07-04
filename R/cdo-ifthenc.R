## This file was created automatically, do not edit by hand.
#' ifthenc
#'
#' Conditional select a constant
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param c, FLOAT - Constant
#'
#' @export
cdo_ifthenc <- function(ifile, c = NULL, ofile = NULL) {
  cdo(operator = operators$ifthenc,
      input = list(ifile),
      params = list(c = c),
      output = c(ofile)
  )
}
