## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.


#'
#' @export
#' @rdname xsinfo
cdo_xsinfop <- function(ifiles) {
  cdo(operator = operators$xsinfop,
      input = as.list(ifiles),
      params = NULL,
      output = c()
  )
}
