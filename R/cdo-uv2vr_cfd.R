## This file was created automatically, do not edit by hand.
#' uv2vr_cfd
#'
#' Wind transformation
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param u, STRING - Name of variable u (default: u)
#' @param v, STRING - Name of variable v (default: v)
#' @param boundOpt, INTEGER - Boundary condition option (0-3) (default: 0/1 for cyclic grids)
#' @param outMode, STRING - Output mode new/append (default: new)
#'
#' @export
cdo_uv2vr_cfd <- function(ifile, u = NULL, v = NULL, boundOpt = NULL, outMode = NULL, ofile = NULL) {
  cdo(operator = operators$uv2vr_cfd,
      input = list(ifile),
      params = list(u = u, v = v, boundOpt = boundOpt, outMode = outMode),
      output = c(ofile)
  )
}
