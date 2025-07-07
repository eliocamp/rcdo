## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname ninfo
cdo_ntime <- function(ifile) {
  cdo(operator = operators$ntime,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
