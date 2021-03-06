## This file was created automatically, do not edit by hand.


#' Consecutive wet days index per time period
#' 
#' Let infile be a time series of the daily precipitation amount RR, then the
#' largest number of consecutive days where RR is at least R is counted. R is an
#' optional parameter with default R = 1 mm. A further output variable is the
#' number of wet periods of more than N days. The date information of a timestep
#' in outfile is the date of the last contributing timestep in infile.
#' 
#' @details
#'      contour  Contour plot
#'               The operator contour generates the discrete contour lines of the input field values.
#'               The following additional parameters are valid for contour operator,
#'               module in addition to the common plot parameters:
#' 
#' @name EcaCwd
NULL

#' @param infile input file.
#' @param outfile output file.
#' @rdname EcaCwd
#' @export
cdo_eca_cwd <- function(infile, outfile = NULL) {
  .new_step(operator = 'eca_cwd', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
