## This file was created automatically, do not edit by hand.
#' import_cmsaf
#'
#' Import CM
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_import_cmsaf <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_cmsaf,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
