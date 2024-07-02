## This file was created automatically, do not edit by hand.
#' collgrid
#'
#' Collect horizontal grid
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nx, INTEGER - Number of regions in x direction [default: number of input files]
#' @param names, STRING - Comma-separated list of variable names [default: all variables]
#'
#' @export
cdo_collgrid <- function(..., nx = NULL, names = NULL, ofile = NULL) {
  cdo(operator = operators$collgrid,
      input = list(...),
      params = list(nx = nx, names = names),
      output = ofile
  )
}
