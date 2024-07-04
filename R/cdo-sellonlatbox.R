## This file was created automatically, do not edit by hand.
#' sellonlatbox
#'
#' Select a box
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param lon1, FLOAT - Western longitude in degrees
#' @param lon2, FLOAT - Eastern longitude in degrees
#' @param lat1, FLOAT - Southern or northern latitude in degrees
#' @param lat2, FLOAT - Northern or southern latitude in degrees
#' @param idx1, INTEGER - Index of first longitude (1 - nlon)
#' @param idx2, INTEGER - Index of last longitude (1 - nlon)
#' @param idy1, INTEGER - Index of first latitude (1 - nlat)
#' @param idy2, INTEGER - Index of last latitude (1 - nlat)
#'
#' @export
cdo_sellonlatbox <- function(ifile, lon1 = NULL, lon2 = NULL, lat1 = NULL, lat2 = NULL, idx1 = NULL, idx2 = NULL, idy1 = NULL, idy2 = NULL, ofile = NULL) {
  cdo(operator = operators$sellonlatbox,
      input = list(ifile),
      params = list(lon1 = lon1, lon2 = lon2, lat1 = lat1, lat2 = lat2, idx1 = idx1, idx2 = idx2, idy1 = idy1, idy2 = idy2),
      output = c(ofile)
  )
}
