## This file was created automatically, do not edit by hand.
#' import_cmsaf
#'
#' Import CM
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_import_cmsaf <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_cmsaf,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
