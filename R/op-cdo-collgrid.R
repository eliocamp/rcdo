# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param nx INTEGER - Number of regions in x direction \[default: number of input files\]
#' @param names STRING - Comma-separated list of variable names \[default: all variables\]
#'
#' @export
#' @rdname collgrid
cdo_collgrid <- function(ifiles, nx = NULL, names = NULL, ofile = NULL) {
  cdo(operator = operators$collgrid,
      input = maybe_list(ifiles),
      params = list(nx = nx, names = names),
      output = c(ofile)
  )
}
