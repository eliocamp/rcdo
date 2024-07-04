## This file was created automatically, do not edit by hand.
#' mervar1
#'
#' Meridional statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
cdo_mervar1 <- function(ifile, p = NULL, ofile = NULL) {
  cdo(operator = operators$mervar1,
      input = list(ifile),
      params = list(p = p),
      output = c(ofile)
  )
}
