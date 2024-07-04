## This file was created automatically, do not edit by hand.
#' asin
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_asin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$asin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
