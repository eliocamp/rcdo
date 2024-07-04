## This file was created automatically, do not edit by hand.
#' dhourrange
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dhourrange <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhourrange,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
