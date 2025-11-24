# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param mask STRING - file which holds the mask field
#' @param limitCoordsOutput STRING - optional parameter to limit coordinates output: 'nobounds' disables coordinate bounds, 'nocoords' avoids all coordinate information
#'
#' @export
#' @rdname mapreduce
cdo_reducegrid <- function(ifile, mask = NULL, limitCoordsOutput = NULL, ofile = NULL) {
  cdo(operator = operators$reducegrid,
      input = list(ifile),
      params = list(mask = mask, limitCoordsOutput = limitCoordsOutput),
      output = c(ofile)
  )
}
