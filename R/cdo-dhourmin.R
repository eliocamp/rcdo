## This file was created automatically, do not edit by hand.
#' dhourmin
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dhourmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhourmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
