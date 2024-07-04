## This file was created automatically, do not edit by hand.
#' selgridcell
#'
#' Select grid cells
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param indices, INTEGER - Comma-separated list or first/last[/inc] range of indices
#'
#' @export
cdo_selgridcell <- function(ifile, indices = NULL, ofile = NULL) {
  cdo(operator = operators$selgridcell,
      input = list(ifile),
      params = list(indices = indices),
      output = c(ofile)
  )
}
