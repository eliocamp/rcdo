## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param plevels, FLOAT - Comma-separated list of pressure levels in pascal
#'
#' @export
#' @rdname vertintap
cdo_ap2pl <- function(ifile, plevels = NULL, ofile = NULL) {
  cdo(operator = operators$ap2pl,
      input = list(ifile),
      params = list(plevels = plevels),
      output = c(ofile)
  )
}
