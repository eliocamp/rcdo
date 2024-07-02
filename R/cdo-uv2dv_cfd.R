## This file was created automatically, do not edit by hand.
#' uv2dv_cfd
#'
#' Wind transformation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param u, STRING - Name of variable u (default: u)
#' @param v, STRING - Name of variable v (default: v)
#' @param boundOpt, INTEGER - Boundary condition option (0-3) (default: 0/1 for cyclic grids)
#' @param outMode, STRING - Output mode new/append (default: new)
#'
#' @export
cdo_uv2dv_cfd <- function(ifile, u = NULL, v = NULL, boundOpt = NULL, outMode = NULL, ofile = NULL) {
  cdo(operator = operators$uv2dv_cfd,
      input = list(ifile),
      params = list(u = u, v = v, boundOpt = boundOpt, outMode = outMode),
      output = ofile
  )
}
