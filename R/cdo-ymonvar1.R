## This file was created automatically, do not edit by hand.
#' ymonvar1
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymonvar1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonvar1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
