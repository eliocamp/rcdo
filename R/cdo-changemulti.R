## This file was created automatically, do not edit by hand.
#' changemulti
#'
#' Select multiple fields via GRIB1 parameters
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_changemulti <- function(ifile, ofile = NULL) {
  cdo(operator = operators$changemulti,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
