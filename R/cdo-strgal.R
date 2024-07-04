## This file was created automatically, do not edit by hand.
#' strgal
#'
#' Strong gale days index per time period
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_strgal <- function(ifile, ofile = NULL) {
  cdo(operator = operators$strgal,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
