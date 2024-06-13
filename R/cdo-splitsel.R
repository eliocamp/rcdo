#' splitsel
#'
#' splits ifile into pieces, one for each adjacent sequence t1, ...., tn of timesteps of the same selected time range
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param noffset, Number of input timesteps skipped before the first timestep range (optional)
#' @param nskip, Number of input timesteps skipped between timestep ranges (optional)
#' @param nsets, Number of input timesteps for each output file
#'
#' @export
cdo_splitsel <- function(ifile, nsets, noffset = NULL, nskip = NULL, obase = NULL) {
  cdo(operator = operators$splitsel,
      input = list(ifile),
      params = list(nsets = nsets, noffset = noffset, nskip = nskip),
      output = obase
  )
}
