## This file was created automatically, do not edit by hand.
#' selgridcell
#'
#' Select grid cells
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param indices, INTEGER - Comma-separated list or first/last\[/inc\] range of indices
#'
#' @export
cdo_selgridcell <- function(ifile, indices = NULL, ofile = NULL) {
  cdo(operator = operators$selgridcell,
      input = list(ifile),
      params = list(indices = indices),
      output = c(ofile)
  )
}
