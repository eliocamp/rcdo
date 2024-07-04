## This file was created automatically, do not edit by hand.
#' zonavg
#'
#' Zonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#' @param zonaldes, STRING - Description of the zonal latitude bins needed for data on an unstructured grid. A predefined zonal description is zonal_&lt;DY&gt;. DY is the increment of the latitudes in degrees.
#'
#' @export
cdo_zonavg <- function(ifile, p = NULL, zonaldes = NULL, ofile = NULL) {
  cdo(operator = operators$zonavg,
      input = list(ifile),
      params = list(p = p, zonaldes = zonaldes),
      output = c(ofile)
  )
}
