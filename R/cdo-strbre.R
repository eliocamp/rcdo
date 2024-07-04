## This file was created automatically, do not edit by hand.
#' strbre
#'
#' Strong breeze days index per time period
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_strbre <- function(ifile, ofile = NULL) {
  cdo(operator = operators$strbre,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
