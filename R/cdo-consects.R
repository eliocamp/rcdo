## This file was created automatically, do not edit by hand.
#' consects
#'
#' Consecute timestep periods
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_consects <- function(ifile, ofile = NULL) {
  cdo(operator = operators$consects,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
