## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname outputgmt
cdo_gmtcells <- function(ifile) {
  cdo(operator = operators$gmtcells,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
