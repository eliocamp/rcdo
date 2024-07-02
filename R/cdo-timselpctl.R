## This file was created automatically, do not edit by hand.
#' timselpctl
#'
#' Time range percentile values
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param p, FLOAT - Percentile number in {0, ..., 100}
#' @param nsets, INTEGER - Number of input timesteps for each output timestep
#' @param noffset, INTEGER - Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, INTEGER - Number of input timesteps skipped between timestep ranges (optional)
#'
#' @export
cdo_timselpctl <- function(ifile1, ifile2, ifile3, p = NULL, nsets = NULL, noffset = NULL, nskip = NULL, ofile = NULL) {
  cdo(operator = operators$timselpctl,
      input = list(ifile1,ifile2,ifile3),
      params = list(p = p, nsets = nsets, noffset = noffset, nskip = nskip),
      output = ofile
  )
}
