## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname filedes
cdo_vct <- function(ifile) {
  cdo(operator = operators$vct,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
