# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname showinfo
cdo_showname <- function(ifile) {
  cdo(operator = operators$showname,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
