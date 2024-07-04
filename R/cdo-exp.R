## This file was created automatically, do not edit by hand.
#' exp
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_exp <- function(ifile, ofile = NULL) {
  cdo(operator = operators$exp,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
