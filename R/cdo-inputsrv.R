## This file was created automatically, do not edit by hand.

#' @param ofile String with the path to the output file.
#' @param grid STRING - Grid description file or name
#' @param zaxis STRING - Z-axis description file
#'
#' @export
#' @rdname input
cdo_inputsrv <- function(grid = NULL, zaxis = NULL, ofile = NULL) {
  cdo(operator = operators$inputsrv,
      input = list(),
      params = list(grid = grid, zaxis = zaxis),
      output = c(ofile)
  )
}
