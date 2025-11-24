# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname seasstat
cdo_seasmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
