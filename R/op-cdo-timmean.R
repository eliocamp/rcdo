# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname timstat
cdo_timmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
