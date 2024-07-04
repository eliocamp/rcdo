## This file was created automatically, do not edit by hand.
#' eca_id
#'
#' Ice days index per time period
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param freq, STRING - Output frequency (year, month)
#'
#' @export
cdo_eca_id <- function(ifile, freq = NULL, ofile = NULL) {
  cdo(operator = operators$eca_id,
      input = list(ifile),
      params = list(freq = freq),
      output = c(ofile)
  )
}
