## This file was created automatically, do not edit by hand.
#' ymondiv
#'
#' Multi
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymondiv <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$ymondiv,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
