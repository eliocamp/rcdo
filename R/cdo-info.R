## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.


#'
#' @export
#' @rdname info
cdo_info <- function(ifiles) {
  cdo(operator = operators$info,
      input = maybe_list(ifiles),
      params = NULL,
      output = c()
  )
}
