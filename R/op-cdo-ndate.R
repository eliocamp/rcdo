## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname ninfo
cdo_ndate <- function(ifile) {
  cdo(operator = operators$ndate,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
