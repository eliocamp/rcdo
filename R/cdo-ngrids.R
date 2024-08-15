## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname ninfo
cdo_ngrids <- function(ifile) {
  cdo(operator = operators$ngrids,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
