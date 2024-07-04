## This file was created automatically, do not edit by hand.
#' mergetime
#'
#' Merge datasets
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param skip_same_time, BOOL - Skips all consecutive timesteps with a double entry of the same timestamp.
#' @param names, STRING - Fill missing variable names with missing values (union) or use the intersection (intersect).
#'
#' @export
cdo_mergetime <- function(ifiles, skip_same_time = NULL, names = NULL, ofile = NULL) {
  cdo(operator = operators$mergetime,
      input = as.list(ifiles),
      params = list(skip_same_time = skip_same_time, names = names),
      output = c(ofile)
  )
}
