## This file was created automatically, do not edit by hand.
#' random
#'
#' Generate a field
#'
#' @param ifile Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param const, FLOAT - Constant
#' @param seed, INTEGER - The seed for a new sequence of pseudo-random numbers \[default: 1\]
#' @param grid, STRING - Target grid description file or name
#' @param start, FLOAT - Start value of the loop
#' @param end, FLOAT - End value of the loop
#' @param inc, FLOAT - Increment of the loop \[default: 1\]
#' @param levels, FLOAT - Target levels in metre above surface
#'
#' @export
cdo_random <- function(ifile, const = NULL, seed = NULL, grid = NULL, start = NULL, end = NULL, inc = NULL, levels = NULL, ofile = NULL) {
  cdo(operator = operators$random,
      input = list(ifile),
      params = list(const = const, seed = seed, grid = grid, start = start, end = end, inc = inc, levels = levels),
      output = c(ofile)
  )
}
