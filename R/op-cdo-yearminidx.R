## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param complete_only BOOL - Process the last year only if it is complete
#'
#' @export
#' @rdname yearstat
cdo_yearminidx <- function(ifile, complete_only = NULL, ofile = NULL) {
  cdo(operator = operators$yearminidx,
      input = list(ifile),
      params = list(complete_only = complete_only),
      output = c(ofile)
  )
}
