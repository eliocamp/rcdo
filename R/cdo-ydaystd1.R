## This file was created automatically, do not edit by hand.
#' ydaystd1
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ydaystd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ydaystd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
