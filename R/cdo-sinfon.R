## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.


#'
#' @export
#' @rdname sinfo
cdo_sinfon <- function(ifiles) {
  cdo(operator = operators$sinfon,
      input = as.list(ifiles),
      params = NULL,
      output = c()
  )
}
