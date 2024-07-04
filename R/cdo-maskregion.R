## This file was created automatically, do not edit by hand.
#' maskregion
#'
#' Mask regions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param regions, STRING - Comma-separated list of ASCII formatted files with different regions
#'
#' @export
cdo_maskregion <- function(ifile, regions = NULL, ofile = NULL) {
  cdo(operator = operators$maskregion,
      input = list(ifile),
      params = list(regions = regions),
      output = c(ofile)
  )
}
