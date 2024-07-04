## This file was created automatically, do not edit by hand.
#' setmisstodis
#'
#' Set missing value
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param neighbors, INTEGER - Number of nearest neighbors
#' @param newmiss, FLOAT - New missing value
#' @param c, FLOAT - Constant
#' @param rmin, FLOAT - Lower bound
#' @param rmax, FLOAT - Upper bound
#'
#' @export
cdo_setmisstodis <- function(ifile, neighbors = NULL, newmiss = NULL, c = NULL, rmin = NULL, rmax = NULL, ofile = NULL) {
  cdo(operator = operators$setmisstodis,
      input = list(ifile),
      params = list(neighbors = neighbors, newmiss = newmiss, c = c, rmin = rmin, rmax = rmax),
      output = c(ofile)
  )
}
