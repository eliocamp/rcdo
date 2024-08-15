## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname ninfo
cdo_npar <- function(ifile) {
  cdo(operator = operators$npar,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
