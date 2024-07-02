## This file was created automatically, do not edit by hand.
#' inputext
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
cdo_inputext <- function(ifile, grid = NULL, zaxis = NULL, ofile = NULL) {
  cdo(operator = operators$inputext,
      input = list(ifile),
      params = list(grid = grid, zaxis = zaxis),
      output = ofile
  )
}
