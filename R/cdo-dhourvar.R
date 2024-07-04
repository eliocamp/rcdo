## This file was created automatically, do not edit by hand.
#' dhourvar
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dhourvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhourvar,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
