## This file was created automatically, do not edit by hand.
#' dhourmean
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dhourmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhourmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
