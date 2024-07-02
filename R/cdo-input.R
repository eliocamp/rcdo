## This file was created automatically, do not edit by hand.
#' input
#'
#' Formatted input
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param grid, STRING - Grid description file or name
#' @param zaxis, STRING - Z-axis description file
#'
#' @export
cdo_input <- function(ifile, grid = NULL, zaxis = NULL, ofile = NULL) {
  cdo(operator = operators$input,
      input = list(ifile),
      params = list(grid = grid, zaxis = zaxis),
      output = ofile
  )
}
