## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param obase String with the basename of the output files.

#'
#' @export
#' @rdname splitdate
cdo_splitdate <- function(ifile, obase = NULL) {
  cdo(operator = operators$splitdate,
      input = list(ifile),
      params = NULL,
      output = c(obase)
  )
}
