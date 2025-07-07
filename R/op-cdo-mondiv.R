## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname monarith
cdo_mondiv <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$mondiv,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
