## This file was created automatically, do not edit by hand.
#' acos
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_acos <- function(ifile, ofile = NULL) {
  cdo(operator = operators$acos,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
