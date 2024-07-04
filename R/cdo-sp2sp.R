## This file was created automatically, do not edit by hand.
#' sp2sp
#'
#' Spectral conversion
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param trunc, INTEGER - New spectral resolution
#'
#' @export
cdo_sp2sp <- function(ifile, trunc = NULL, ofile = NULL) {
  cdo(operator = operators$sp2sp,
      input = list(ifile),
      params = list(trunc = trunc),
      output = c(ofile)
  )
}
