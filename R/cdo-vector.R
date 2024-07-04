## This file was created automatically, do not edit by hand.
#' vector
#'
#' Lat/Lon vector plot
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param parameter, STRING - Comma-separated list of plot parameters
#'
#' @export
cdo_vector <- function(ifile, parameter = NULL, ofile = NULL) {
  cdo(operator = operators$vector,
      input = list(ifile),
      params = list(parameter = parameter),
      output = c(ofile)
  )
}
