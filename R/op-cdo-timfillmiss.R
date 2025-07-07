## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param method STRING - Fill method \[nearest|linear|forward|backward\] (default: nearest)
#' @param limit INTEGER - The maximum number of consecutive missing values to fill (default: all)
#' @param max_gaps INTEGER - The maximum number of gaps to fill (default: all)
#'
#' @export
#' @rdname timfillmiss
cdo_timfillmiss <- function(ifile, method = NULL, limit = NULL, max_gaps = NULL, ofile = NULL) {
  cdo(operator = operators$timfillmiss,
      input = list(ifile),
      params = list(method = method, limit = limit, max_gaps = max_gaps),
      output = c(ofile)
  )
}
