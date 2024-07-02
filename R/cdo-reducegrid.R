## This file was created automatically, do not edit by hand.
#' reducegrid
#'
#' Reduce fields to user
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param mask, STRING - file which holds the mask field
#' @param limitCoordsOutput, STRING - optional parameter to limit coordinates output: 'nobounds' disables coordinate bounds, 'nocoords' avoids all coordinate information
#'
#' @export
cdo_reducegrid <- function(ifile, mask = NULL, limitCoordsOutput = NULL, ofile = NULL) {
  cdo(operator = operators$reducegrid,
      input = list(ifile),
      params = list(mask = mask, limitCoordsOutput = limitCoordsOutput),
      output = ofile
  )
}
