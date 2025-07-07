## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname copy
cdo_cat <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$cat,
      input = maybe_list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
