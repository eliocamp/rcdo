## This file was created automatically, do not edit by hand.
#' sqr
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_sqr <- function(ifile, ofile = NULL) {
  cdo(operator = operators$sqr,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
