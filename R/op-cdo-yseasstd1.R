# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname yseasstat
cdo_yseasstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yseasstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
