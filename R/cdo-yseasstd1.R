## This file was created automatically, do not edit by hand.
#' yseasstd1
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yseasstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yseasstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
