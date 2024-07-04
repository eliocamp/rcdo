## This file was created automatically, do not edit by hand.
#' seasstd1
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
