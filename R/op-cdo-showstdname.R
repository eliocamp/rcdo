## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname showinfo
cdo_showstdname <- function(ifile) {
  cdo(operator = operators$showstdname,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
