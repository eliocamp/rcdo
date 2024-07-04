## This file was created automatically, do not edit by hand.
#' divdpm
#'
#' Arithmetic with days
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_divdpm <- function(ifile, ofile = NULL) {
  cdo(operator = operators$divdpm,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
