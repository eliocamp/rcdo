## This file was created automatically, do not edit by hand.
#' setgrid
#'
#' Set grid information
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param grid, STRING - Grid description file or name
#' @param gridtype, STRING - Grid type (curvilinear, unstructured, regular, lonlat, projection or dereference)
#' @param gridarea, STRING - Data file, the first field is used as grid cell area
#' @param gridmask, STRING - Data file, the first field is used as grid mask
#' @param projparams, STRING - Proj library parameter (e.g.:+init=EPSG:3413)
#'
#' @export
cdo_setgrid <- function(ifile, grid = NULL, gridtype = NULL, gridarea = NULL, gridmask = NULL, projparams = NULL, ofile = NULL) {
  cdo(operator = operators$setgrid,
      input = list(ifile),
      params = list(grid = grid, gridtype = gridtype, gridarea = gridarea, gridmask = gridmask, projparams = projparams),
      output = ofile
  )
}
