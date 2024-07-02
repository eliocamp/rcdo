## This file was created automatically, do not edit by hand.
#' samplegrid
#'
#' Resample grid
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param factor, INTEGER - Resample factor, typically 2, which will half the resolution
#'
#' @export
cdo_samplegrid <- function(ifile, factor = NULL, ofile = NULL) {
  cdo(operator = operators$samplegrid,
      input = list(ifile),
      params = list(factor = factor),
      output = ofile
  )
}
