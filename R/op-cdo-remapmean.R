# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param grid STRING - Target grid description file or name
#'
#' @export
#' @rdname remapstat
cdo_remapmean <- function(ifile, grid = NULL, ofile = NULL) {
  cdo(operator = operators$remapmean,
      input = list(ifile),
      params = list(grid = grid),
      output = c(ofile)
  )
}
