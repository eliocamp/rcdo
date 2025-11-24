# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname yhourstat
cdo_yhourstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yhourstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
