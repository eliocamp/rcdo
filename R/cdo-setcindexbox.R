## This file was created automatically, do not edit by hand.
#' setcindexbox
#'
#' Set a box to constant
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param c, FLOAT - Constant
#' @param lon1, FLOAT - Western longitude
#' @param lon2, FLOAT - Eastern longitude
#' @param lat1, FLOAT - Southern or northern latitude
#' @param lat2, FLOAT - Northern or southern latitude
#' @param idx1, INTEGER - Index of first longitude
#' @param idx2, INTEGER - Index of last longitude
#' @param idy1, INTEGER - Index of first latitude
#' @param idy2, INTEGER - Index of last latitude
#'
#' @export
cdo_setcindexbox <- function(ifile, c = NULL, lon1 = NULL, lon2 = NULL, lat1 = NULL, lat2 = NULL, idx1 = NULL, idx2 = NULL, idy1 = NULL, idy2 = NULL, ofile = NULL) {
  cdo(operator = operators$setcindexbox,
      input = list(ifile),
      params = list(c = c, lon1 = lon1, lon2 = lon2, lat1 = lat1, lat2 = lat2, idx1 = idx1, idx2 = idx2, idy1 = idy1, idy2 = idy2),
      output = c(ofile)
  )
}
