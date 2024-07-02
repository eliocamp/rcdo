## This file was created automatically, do not edit by hand.
#' genlaf
#'
#' Largest area fraction remapping
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param grid, STRING - Target grid description file or name
#'
#' @export
cdo_genlaf <- function(ifile, grid = NULL, ofile = NULL) {
  cdo(operator = operators$genlaf,
      input = list(ifile),
      params = list(grid = grid),
      output = ofile
  )
}
