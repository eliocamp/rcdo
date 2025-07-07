## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname outputgmt
cdo_gmtxyz <- function(ifile) {
  cdo(operator = operators$gmtxyz,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
