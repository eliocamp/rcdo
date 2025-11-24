# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname hurr
cdo_hurr <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hurr,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
