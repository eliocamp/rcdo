## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.

#' @param parameter STRING - Comma-separated list of keynames, one for each column of the table
#'
#' @export
#' @rdname outputtab
cdo_outputtab <- function(ifiles, parameter = NULL) {
  cdo(operator = operators$outputtab,
      input = as.list(ifiles),
      params = list(parameter = parameter),
      output = c()
  )
}
