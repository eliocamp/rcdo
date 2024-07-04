## This file was created automatically, do not edit by hand.
#' sqrt
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_sqrt <- function(ifile, ofile = NULL) {
  cdo(operator = operators$sqrt,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
