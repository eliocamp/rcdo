## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p, FLOAT - Percentile number in \{0, ..., 100\}
#' @param nsets, INTEGER - Number of input timesteps for each output timestep
#' @param noffset, INTEGER - Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, INTEGER - Number of input timesteps skipped between timestep ranges (optional)
#'
#' @export
#' @rdname timselpctl
cdo_timselpctl <- function(ifile1, ifile2, ifile3, p = NULL, nsets = NULL, noffset = NULL, nskip = NULL, ofile = NULL) {
  cdo(operator = operators$timselpctl,
      input = list(ifile1, ifile2, ifile3),
      params = list(p = p, nsets = nsets, noffset = noffset, nskip = nskip),
      output = c(ofile)
  )
}
