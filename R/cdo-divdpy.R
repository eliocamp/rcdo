## This file was created automatically, do not edit by hand.
#' divdpy
#'
#' Arithmetic with days
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_divdpy <- function(ifile, ofile = NULL) {
  cdo(operator = operators$divdpy,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
