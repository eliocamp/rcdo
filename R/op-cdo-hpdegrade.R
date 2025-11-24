# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nside INTEGER - The nside of the target healpix, must be a power of two \[default: same as input\].
#' @param order STRING - Pixel ordering of the target healpix ('nested' or 'ring').
#' @param power FLOAT - If non-zero, divide the result by (nside\[in\]/nside\[out\])**power. power=-2 keeps the sum of the map invariant.
#'
#' @export
#' @rdname healpix
cdo_hpdegrade <- function(ifile, nside = NULL, order = NULL, power = NULL, ofile = NULL) {
  cdo(operator = operators$hpdegrade,
      input = list(ifile),
      params = list(nside = nside, order = order, power = power),
      output = c(ofile)
  )
}
