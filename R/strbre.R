## This file was created automatically, do not edit by hand.


#' Strong breeze days index per time period
#' 
#' Let infile be a time series of the daily maximum horizontal wind speed VX, then
#' the number of days where VX is greater than or equal to 10.5 m/s is counted. A
#' further output variable is the maximum number of consecutive days with maximum
#' wind speed greater than or equal to 10.5 m/s. Note that VX is defined as the
#' square root of the sum of squares of the zonal and meridional wind speeds and
#' have to be given in units of m/s. The date information of a timestep in outfile
#' is the date of the last contributing timestep in infile.
#' 
#' @details
#'      histcount  Histogram count
#'                 Number of elements in the bin range.
#'      histsum    Histogram sum
#'                 Sum of elements in the bin range.
#'      histmean   Histogram mean
#'                 Mean of elements in the bin range.
#'      histfreq   Histogram frequency
#'                 Relative frequency of elements in the bin range.
#' 
#' @name Strbre
NULL

#' @param infile input file.
#' @param outfile output file.
#' @rdname Strbre
#' @export
cdo_strbre <- function(infile, outfile = NULL) {
  .new_step(operator = 'strbre', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
