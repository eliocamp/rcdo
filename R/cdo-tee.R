## This file was created automatically, do not edit by hand.
#' tee
#'
#' Duplicate a data stream and write it to file
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param outfile2, STRING - Destination filename for the copy of the input file
#'
#' @export
cdo_tee <- function(ifile, outfile2 = NULL, ofile = NULL) {
  cdo(operator = operators$tee,
      input = list(ifile),
      params = list(outfile2 = outfile2),
      output = c(ofile)
  )
}
