## This file was created automatically, do not edit by hand.
#' Meridional statistics
#'
#' This module computes meridional statistical values of the input fields. Depending on the chosen operator, the meridional minimum, maximum, range, sum, average, standard deviation, variance, skewness, kurtosis, median or a certain percentile of the field is written to outfile. Operators of this module require all variables on the same regular lon/lat grid. 
#'
#' @details
#'     mermin     Meridional minimum
#'                For every longitude the minimum over all latitudes is computed.
#'     mermax     Meridional maximum
#'                For every longitude the maximum over all latitudes is computed.
#'     merrange   Meridional range
#'                For every longitude the range over all latitudes is computed.
#'     mersum     Meridional sum
#'                For every longitude the sum over all latitudes is computed.
#'     mermean    Meridional mean
#'                For every longitude the area weighted mean over all latitudes is computed.
#'     meravg     Meridional average
#'                For every longitude the area weighted average over all latitudes is computed.
#'     merstd     Meridional standard deviation
#'                For every longitude the standard deviation over all latitudes is computed. Normalize by n.
#'     merstd1    Meridional standard deviation (n-1)
#'                For every longitude the standard deviation over all latitudes is computed. Normalize by (n-1).
#'     mervar     Meridional variance
#'                For every longitude the variance over all latitudes is computed. Normalize by n.
#'     mervar1    Meridional variance (n-1)
#'                For every longitude the variance over all latitudes is computed. Normalize by (n-1).
#'     merskew    Meridional skewness
#'                For every longitude the skewness over all latitudes is computed.
#'     merkurt    Meridional kurtosis
#'                For every longitude the kurtosis over all latitudes is computed.
#'     mermedian  Meridional median
#'                For every longitude the median over all latitudes is computed.
#'     merpctl    Meridional percentiles
#'                For every longitude the pth percentile over all latitudes is computed.
#' 
#'
#' 
#'
#' @name merstat
NULL
