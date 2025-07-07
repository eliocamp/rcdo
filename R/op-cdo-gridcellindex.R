## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.

#' @param lon INTEGER - Longitude of the grid cell in degree
#' @param lat INTEGER - Latitude of the grid cell in degree
#'
#' @export
#' @rdname getgridcell
cdo_gridcellindex <- function(ifile, lon = NULL, lat = NULL) {
  cdo(operator = operators$gridcellindex,
      input = list(ifile),
      params = list(lon = lon, lat = lat),
      output = c()
  )
}
