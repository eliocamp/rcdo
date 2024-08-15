## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname filedes
cdo_partab <- function(ifile) {
  cdo(operator = operators$partab,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
