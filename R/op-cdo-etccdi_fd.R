## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param freq STRING - Output frequency (year, month)
#'
#' @export
#' @rdname ecafd
cdo_etccdi_fd <- function(ifile, freq = NULL, ofile = NULL) {
  cdo(operator = operators$etccdi_fd,
      input = list(ifile),
      params = list(freq = freq),
      output = c(ofile)
  )
}
