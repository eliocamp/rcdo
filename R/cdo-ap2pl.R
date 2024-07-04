## This file was created automatically, do not edit by hand.
#' ap2pl
#'
#' Vertical pressure interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param plevels, FLOAT - Comma-separated list of pressure levels in pascal
#'
#' @export
cdo_ap2pl <- function(ifile, plevels = NULL, ofile = NULL) {
  cdo(operator = operators$ap2pl,
      input = list(ifile),
      params = list(plevels = plevels),
      output = c(ofile)
  )
}
