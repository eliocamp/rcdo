## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param N, INTEGER - Minimum number of days exceeded (default: N = 5)
#'
#' @export
#' @rdname ecacfd
cdo_eca_cfd <- function(ifile, N = NULL, ofile = NULL) {
  cdo(operator = operators$eca_cfd,
      input = list(ifile),
      params = list(N = N),
      output = c(ofile)
  )
}
