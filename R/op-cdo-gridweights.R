# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param radius FLOAT - Planet radius in meter
#'
#' @export
#' @rdname gridcell
cdo_gridweights <- function(ifile, radius = NULL, ofile = NULL) {
  cdo(operator = operators$gridweights,
      input = list(ifile),
      params = list(radius = radius),
      output = c(ofile)
  )
}
