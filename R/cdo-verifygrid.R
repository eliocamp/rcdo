## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.


#'
#' @export
#' @rdname verifygrid
cdo_verifygrid <- function(ifile) {
  cdo(operator = operators$verifygrid,
      input = list(ifile),
      params = NULL,
      output = c()
  )
}
