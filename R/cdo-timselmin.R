## This file was created automatically, do not edit by hand.
#' timselmin
#'
#' Time range statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nsets, INTEGER - Number of input timesteps for each output timestep
#' @param noffset, INTEGER - Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, INTEGER - Number of input timesteps skipped between timestep ranges (optional)
#'
#' @export
cdo_timselmin <- function(ifile, nsets = NULL, noffset = NULL, nskip = NULL, ofile = NULL) {
  cdo(operator = operators$timselmin,
      input = list(ifile),
      params = list(nsets = nsets, noffset = noffset, nskip = nskip),
      output = c(ofile)
  )
}
