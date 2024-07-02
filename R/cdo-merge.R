## This file was created automatically, do not edit by hand.
#' merge
#'
#' Merge datasets
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param skip_same_time, BOOL - Skips all consecutive timesteps with a double entry of the same timestamp.
#' @param names, STRING - Fill missing variable names with missing values (union) or use the intersection (intersect).
#'
#' @export
cdo_merge <- function(..., skip_same_time = NULL, names = NULL, ofile = NULL) {
  cdo(operator = operators$merge,
      input = list(...),
      params = list(skip_same_time = skip_same_time, names = names),
      output = ofile
  )
}
