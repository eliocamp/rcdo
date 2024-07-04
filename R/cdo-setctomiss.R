## This file was created automatically, do not edit by hand.
#' setctomiss
#'
#' Set missing value
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param neighbors, INTEGER - Number of nearest neighbors
#' @param newmiss, FLOAT - New missing value
#' @param c, FLOAT - Constant
#' @param rmin, FLOAT - Lower bound
#' @param rmax, FLOAT - Upper bound
#'
#' @export
cdo_setctomiss <- function(ifile, neighbors = NULL, newmiss = NULL, c = NULL, rmin = NULL, rmax = NULL, ofile = NULL) {
  cdo(operator = operators$setctomiss,
      input = list(ifile),
      params = list(neighbors = neighbors, newmiss = newmiss, c = c, rmin = rmin, rmax = rmax),
      output = c(ofile)
  )
}
