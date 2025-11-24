# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#' @param zonaldes STRING - Description of the zonal latitude bins needed for data on an unstructured grid. A predefined zonal description is zonal_&lt;DY&gt;. DY is the increment of the latitudes in degrees.
#'
#' @export
#' @rdname zonstat
cdo_zonmin <- function(ifile, p = NULL, zonaldes = NULL, ofile = NULL) {
  cdo(operator = operators$zonmin,
      input = list(ifile),
      params = list(p = p, zonaldes = zonaldes),
      output = c(ofile)
  )
}
