## This file was created automatically, do not edit by hand.

#' @param ofile String with the path to the output file.
#' @param const FLOAT - Constant
#' @param seed INTEGER - The seed for a new sequence of pseudo-random numbers \[default: 1\]
#' @param grid STRING - Target grid description file or name
#' @param start FLOAT - Start value of the loop
#' @param end FLOAT - End value of the loop
#' @param inc FLOAT - Increment of the loop \[default: 1\]
#' @param levels FLOAT - Target levels in metre above surface
#'
#' @export
#' @rdname vargen
cdo_const <- function(const = NULL, seed = NULL, grid = NULL, start = NULL, end = NULL, inc = NULL, levels = NULL, ofile = NULL) {
  cdo(operator = operators$const,
      input = list(),
      params = list(const = const, seed = seed, grid = grid, start = start, end = end, inc = inc, levels = levels),
      output = c(ofile)
  )
}
