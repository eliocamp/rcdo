## This file was created automatically, do not edit by hand.
#' splitparam
#'
#' Split a dataset
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param swap, STRING - Swap the position of obase and xxx in the output filename
#' @param uuid, STRING - Add a UUID as global attribute &lt;attname&gt; to each output file
#'
#' @export
cdo_splitparam <- function(ifile, swap = NULL, uuid = NULL, obase = NULL) {
  cdo(operator = operators$splitparam,
      input = list(ifile),
      params = list(swap = swap, uuid = uuid),
      output = c(obase)
  )
}