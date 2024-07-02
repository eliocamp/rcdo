## This file was created automatically, do not edit by hand.
#' zonavg
#'
#' Zonal statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param p, FLOAT - Percentile number in {0, ..., 100}
#' @param zonaldes, STRING - Description of the zonal latitude bins needed for data on an unstructured grid. A predefined zonal description is zonal_&lt;DY&gt;. DY is the increment of the latitudes in degrees.
#'
#' @export
cdo_zonavg <- function(ifile, p = NULL, zonaldes = NULL, ofile = NULL) {
  cdo(operator = operators$zonavg,
      input = list(ifile),
      params = list(p = p, zonaldes = zonaldes),
      output = ofile
  )
}
