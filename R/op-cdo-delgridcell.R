# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param indices INTEGER - Comma-separated list or first/last\[/inc\] range of indices
#'
#' @export
#' @rdname selgridcell
cdo_delgridcell <- function(ifile, indices = NULL, ofile = NULL) {
  cdo(operator = operators$delgridcell,
      input = list(ifile),
      params = list(indices = indices),
      output = c(ofile)
  )
}
