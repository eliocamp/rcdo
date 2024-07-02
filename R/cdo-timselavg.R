## This file was created automatically, do not edit by hand.
#' timselavg
#'
#' Time range statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nsets, INTEGER - Number of input timesteps for each output timestep
#' @param noffset, INTEGER - Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, INTEGER - Number of input timesteps skipped between timestep ranges (optional)
#'
#' @export
cdo_timselavg <- function(ifile, nsets = NULL, noffset = NULL, nskip = NULL, ofile = NULL) {
  cdo(operator = operators$timselavg,
      input = list(ifile),
      params = list(nsets = nsets, noffset = noffset, nskip = nskip),
      output = ofile
  )
}
