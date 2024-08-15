## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.

#' @param mapversion INTEGER - Format version of the GrADS map file for GRIB1 datasets. Use 1 for a machinespecific version 1 GrADS map file, 2 for a machine independent version 2 GrADS map fileand 4 to support GRIB files &gt;2GB.A version 2 map file can be used only with GrADS version 1.8 or newer.A version 4 map file can be used only with GrADS version 2.0 or newer.The default is 4 for files &gt;2GB, otherwise 2.
#'
#' @export
#' @rdname gradsdes
cdo_gradsdes <- function(ifile, mapversion = NULL) {
  cdo(operator = operators$gradsdes,
      input = list(ifile),
      params = list(mapversion = mapversion),
      output = c()
  )
}
