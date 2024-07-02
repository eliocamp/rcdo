## This file was created automatically, do not edit by hand.
#' maskindexbox
#'
#' Mask a box
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
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
cdo_maskindexbox <- function(ifile, lon1 = NULL, lon2 = NULL, lat1 = NULL, lat2 = NULL, idx1 = NULL, idx2 = NULL, idy1 = NULL, idy2 = NULL, ofile = NULL) {
  cdo(operator = operators$maskindexbox,
      input = list(ifile),
      params = list(lon1 = lon1, lon2 = lon2, lat1 = lat1, lat2 = lat2, idx1 = idx1, idx2 = idx2, idy1 = idy1, idy2 = idy2),
      output = ofile
  )
}
