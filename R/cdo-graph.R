## This file was created automatically, do not edit by hand.
#' graph
#'
#' Line graph plot
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param parameter, STRING - Comma-separated list of plot parameters
#'
#' @export
cdo_graph <- function(..., parameter = NULL, ofile = NULL) {
  cdo(operator = operators$graph,
      input = list(...),
      params = list(parameter = parameter),
      output = c(ofile)
  )
}
