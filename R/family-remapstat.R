## This file was created automatically, do not edit by hand.
#' Remaps source points to target cells
#'
#' This module maps source points to target cells by calculating a statistical value from the source points. Each target cell contains the statistical value from all source points within that target cell. If there are no source points within a target cell, it gets a missing value. Depending on the chosen operator the minimum, maximum, range, sum, average, variance, standard deviation, skewness, kurtosis or median of source points is computed. 
#'
#' @details
#'     remapmin     Remap minimum
#'                  Minimum value of the source points.
#'     remapmax     Remap maximum
#'                  Maximum value of the source points.
#'     remaprange   Remap range
#'                  Range (max-min value) of the source points.
#'     remapsum     Remap sum
#'                  Sum of the source points.
#'     remapmean    Remap mean
#'                  Mean of the source points.
#'     remapavg     Remap average
#'                  Average of the source points.
#'     remapstd     Remap standard deviation
#'                  Standard deviation of the source points. Normalize by n.
#'     remapstd1    Remap standard deviation (n-1)
#'                  Standard deviation of the source points. Normalize by (n-1).
#'     remapvar     Remap variance
#'                  Variance of the source points. Normalize by n.
#'     remapvar1    Remap variance (n-1)
#'                  Variance of the source points. Normalize by (n-1).
#'     remapskew    Remap skewness
#'                  Skewness of the source points.
#'     remapkurt    Remap kurtosis
#'                  Kurtosis of the source points.
#'     remapmedian  Remap median
#'                  Median of the source points.
#' 
#'
#' 
#'
#' @name remapstat
NULL
