## This file was created automatically, do not edit by hand.
#' Zonal statistics
#'
#' This module computes zonal statistical values of the input fields. Depending on the chosen operator, the zonal minimum, maximum, range, sum, average, standard deviation, variance, skewness, kurtosis, median or a certain percentile of the field is written to outfile. Operators of this module require all variables on the same regular lon/lat grid. Only the zonal mean (zonmean) can be calculated for data on an unstructured grid if the latitude bins are defined with the optional parameter zonaldes. 
#'
#' @details
#'     zonmin     Zonal minimum
#'                For every latitude the minimum over all longitudes is computed.
#'     zonmax     Zonal maximum
#'                For every latitude the maximum over all longitudes is computed.
#'     zonrange   Zonal range
#'                For every latitude the range over all longitudes is computed.
#'     zonsum     Zonal sum
#'                For every latitude the sum over all longitudes is computed.
#'     zonmean    Zonal mean
#'                For every latitude the mean over all longitudes is computed.
#'                Use the optional parameter zonaldes for data on an unstructured grid.
#'     zonavg     Zonal average
#'                For every latitude the average over all longitudes is computed.
#'     zonstd     Zonal standard deviation
#'                For every latitude the standard deviation over all longitudes is computed. Normalize by n.
#'     zonstd1    Zonal standard deviation (n-1)
#'                For every latitude the standard deviation over all longitudes is computed. Normalize by (n-1).
#'     zonvar     Zonal variance
#'                For every latitude the variance over all longitudes is computed. Normalize by n.
#'     zonvar1    Zonal variance (n-1)
#'                For every latitude the variance over all longitudes is computed. Normalize by (n-1).
#'     zonskew    Zonal skewness
#'                For every latitude the skewness over all longitudes is computed.
#'     zonkurt    Zonal kurtosis
#'                For every latitude the kurtosis over all longitudes is computed.
#'     zonmedian  Zonal median
#'                For every latitude the median over all longitudes is computed.
#'     zonpctl    Zonal percentiles
#'                For every latitude the pth percentile over all longitudes is computed.
#' 
#'
#' 
#'
#' @name zonstat
NULL
