# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.


#'
#' @export
#' @rdname info
cdo_infon <- function(ifiles) {
  cdo(operator = operators$infon,
      input = maybe_list(ifiles),
      params = NULL,
      output = c()
  )
}
