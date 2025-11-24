# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param regions STRING - Comma-separated list of ASCII formatted files with different regions
#' @param lon FLOAT - Longitude of the center of the circle in degrees, default lon=0.0
#' @param lat FLOAT - Latitude of the center of the circle in degrees, default lat=0.0
#' @param radius STRING - Radius of the circle, default radius=1deg (units: deg, rad, km, m)
#'
#' @export
#' @rdname selregion
cdo_selcircle <- function(ifile, regions = NULL, lon = NULL, lat = NULL, radius = NULL, ofile = NULL) {
  cdo(operator = operators$selcircle,
      input = list(ifile),
      params = list(regions = regions, lon = lon, lat = lat, radius = radius),
      output = c(ofile)
  )
}
