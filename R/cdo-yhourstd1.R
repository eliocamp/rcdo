## This file was created automatically, do not edit by hand.
#' yhourstd1
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yhourstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yhourstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
