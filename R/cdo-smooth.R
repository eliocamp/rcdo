## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nsmooth INTEGER - Number of times to smooth, default nsmooth=1
#' @param radius STRING - Search radius, default radius=1deg (units: deg, rad, km, m)
#' @param maxpoints INTEGER - Maximum number of points, default maxpoints=&lt;gridsize&gt;
#' @param form STRING - Form of the curve, default form=linear
#' @param weight0 FLOAT - Weight at distance 0, default weight0=0.25
#' @param weightR FLOAT - Weight at the search radius, default weightR=0.25
#'
#' @export
#' @rdname smooth
cdo_smooth <- function(ifile, nsmooth = NULL, radius = NULL, maxpoints = NULL, form = NULL, weight0 = NULL, weightR = NULL, ofile = NULL) {
  cdo(operator = operators$smooth,
      input = list(ifile),
      params = list(nsmooth = nsmooth, radius = radius, maxpoints = maxpoints, form = form, weight0 = weight0, weightR = weightR),
      output = c(ofile)
  )
}
