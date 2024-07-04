## This file was created automatically, do not edit by hand.
#' intlevel3d
#'
#' Linear level interpolation from/to 3D vertical coordinates
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param tgtcoordinate, STRING - filename for 3D vertical target coordinates
#'
#' @export
cdo_intlevel3d <- function(ifile1, ifile2, tgtcoordinate = NULL, ofile = NULL) {
  cdo(operator = operators$intlevel3d,
      input = list(ifile1, ifile2),
      params = list(tgtcoordinate = tgtcoordinate),
      output = c(ofile)
  )
}
