## This file was created automatically, do not edit by hand.
#' yearmonmean
#'
#' Yearly mean from monthly data
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yearmonmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yearmonmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
