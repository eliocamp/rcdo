## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname showinfo
cdo_showmon <- function(ifile) {
  cdo(operator = operators$showmon,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
