## This file was created automatically, do not edit by hand.
#' dv2uv
#'
#' Wind transformation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param gridtype, STRING - Type of the grid: quadratic, linear, cubic (default: quadratic)
#'
#' @export
cdo_dv2uv <- function(ifile, gridtype = NULL, ofile = NULL) {
  cdo(operator = operators$dv2uv,
      input = list(ifile),
      params = list(gridtype = gridtype),
      output = c(ofile)
  )
}
