# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname filedes
cdo_codetab <- function(ifile) {
  cdo(operator = operators$codetab,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
