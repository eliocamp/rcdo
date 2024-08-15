## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.


#'
#' @export
#' @rdname sinfo
cdo_sinfo <- function(ifiles) {
  cdo(operator = operators$sinfo,
      input = as.list(ifiles),
      params = NULL,
      output = c()
  )
}
