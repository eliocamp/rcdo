## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname dminutestat
cdo_dminutestd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dminutestd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
