## This file was created automatically, do not edit by hand.
#' splittabnum
#'
#' Split a dataset
#'
#' @param ifile String with the path to the input file.
#' @param obase String with the basename of the output files.
#' @param swap, STRING - Swap the position of obase and xxx in the output filename
#' @param uuid, STRING - Add a UUID as global attribute &lt;attname&gt; to each output file
#'
#' @export
cdo_splittabnum <- function(ifile, swap = NULL, uuid = NULL, obase = NULL) {
  cdo(operator = operators$splittabnum,
      input = list(ifile),
      params = list(swap = swap, uuid = uuid),
      output = c(obase)
  )
}
