## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname yeararith
cdo_yearmul <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$yearmul,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
