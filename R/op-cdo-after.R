## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param vct STRING - File with VCT in ASCII format
#'
#' @export
#' @rdname afterburner
cdo_after <- function(ifiles, vct = NULL, ofile = NULL) {
  cdo(operator = operators$after,
      input = maybe_list(ifiles),
      params = list(vct = vct),
      output = c(ofile)
  )
}
