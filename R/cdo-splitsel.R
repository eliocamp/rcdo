## This file was created automatically, do not edit by hand.
#' splitsel
#'
#' Split selected timesteps
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nsets, INTEGER - Number of input timesteps for each output file
#' @param noffset, INTEGER - Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, INTEGER - Number of input timesteps skipped between timestep ranges (optional)
#'
#' @export
cdo_splitsel <- function(ifile, nsets = NULL, noffset = NULL, nskip = NULL, obase = NULL) {
  cdo(operator = operators$splitsel,
      input = list(ifile),
      params = list(nsets = nsets, noffset = noffset, nskip = nskip),
      output = c(obase)
  )
}
