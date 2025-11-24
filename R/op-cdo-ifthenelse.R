# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname cond2
cdo_ifthenelse <- function(ifile1, ifile2, ifile3, ofile = NULL) {
  cdo(operator = operators$ifthenelse,
      input = list(ifile1, ifile2, ifile3),
      params = NULL,
      output = c(ofile)
  )
}
