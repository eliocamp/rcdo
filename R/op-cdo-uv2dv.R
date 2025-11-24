# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param gridtype STRING - Type of the grid: quadratic, linear, cubic (default: quadratic)
#'
#' @export
#' @rdname wind
cdo_uv2dv <- function(ifile, gridtype = NULL, ofile = NULL) {
  cdo(operator = operators$uv2dv,
      input = list(ifile),
      params = list(gridtype = gridtype),
      output = c(ofile)
  )
}
