## This file was created automatically, do not edit by hand.
#' topvalue
#'
#' Extract surface
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param isovalue, FLOAT - Isosurface value
#'
#' @export
cdo_topvalue <- function(ifile, isovalue = NULL, ofile = NULL) {
  cdo(operator = operators$topvalue,
      input = list(ifile),
      params = list(isovalue = isovalue),
      output = ofile
  )
}
