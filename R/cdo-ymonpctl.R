## This file was created automatically, do not edit by hand.
#' ymonpctl
#'
#' Multi
#'
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
cdo_ymonpctl <- function(ifile1, ifile2, ifile3, p = NULL, ofile = NULL) {
  cdo(operator = operators$ymonpctl,
      input = list(ifile1, ifile2, ifile3),
      params = list(p = p),
      output = c(ofile)
  )
}
