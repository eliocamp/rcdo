## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname showinfo
cdo_showyear <- function(ifile) {
  cdo(operator = operators$showyear,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
