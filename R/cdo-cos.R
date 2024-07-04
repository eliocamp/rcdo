## This file was created automatically, do not edit by hand.
#' cos
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_cos <- function(ifile, ofile = NULL) {
  cdo(operator = operators$cos,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
