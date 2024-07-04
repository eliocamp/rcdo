## This file was created automatically, do not edit by hand.
#' topvalue
#'
#' Extract surface
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param isovalue, FLOAT - Isosurface value
#'
#' @export
cdo_topvalue <- function(ifile, isovalue = NULL, ofile = NULL) {
  cdo(operator = operators$topvalue,
      input = list(ifile),
      params = list(isovalue = isovalue),
      output = c(ofile)
  )
}
