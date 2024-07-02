## This file was created automatically, do not edit by hand.
#' delgridcell
#'
#' Select grid cells
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param indices, INTEGER - Comma-separated list or first/last[/inc] range of indices
#'
#' @export
cdo_delgridcell <- function(ifile, indices = NULL, ofile = NULL) {
  cdo(operator = operators$delgridcell,
      input = list(ifile),
      params = list(indices = indices),
      output = ofile
  )
}
