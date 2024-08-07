## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname hourstat
cdo_hourstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
