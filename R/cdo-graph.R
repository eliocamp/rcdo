## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param parameter STRING - Comma-separated list of plot parameters
#'
#' @export
#' @rdname maggraph
cdo_graph <- function(ifiles, parameter = NULL, ofile = NULL) {
  cdo(operator = operators$graph,
      input = as.list(ifiles),
      params = list(parameter = parameter),
      output = c(ofile)
  )
}
