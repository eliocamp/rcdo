# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Statistical values over grid boxes
#'
#' This module computes statistical values over surrounding grid boxes. Depending on the chosen operator, the minimum, maximum, range, sum, average, standard deviation, variance, skewness, kurtosis or median of the neighboring grid boxes is written to outfile. All gridbox operators only work on quadrilateral curvilinear grids. 
#'
#' @details
#'     gridboxmin     Gridbox minimum
#'                    Minimum value of the selected grid boxes.
#'     gridboxmax     Gridbox maximum
#'                    Maximum value of the selected grid boxes.
#'     gridboxrange   Gridbox range
#'                    Range (max-min value) of the selected grid boxes.
#'     gridboxsum     Gridbox sum
#'                    Sum of the selected grid boxes.
#'     gridboxmean    Gridbox mean
#'                    Mean of the selected grid boxes.
#'     gridboxavg     Gridbox average
#'                    Average of the selected grid boxes.
#'     gridboxstd     Gridbox standard deviation
#'                    Standard deviation of the selected grid boxes. Normalize by n.
#'     gridboxstd1    Gridbox standard deviation (n-1)
#'                    Standard deviation of the selected grid boxes. Normalize by (n-1).
#'     gridboxvar     Gridbox variance
#'                    Variance of the selected grid boxes. Normalize by n.
#'     gridboxvar1    Gridbox variance (n-1)
#'                    Variance of the selected grid boxes. Normalize by (n-1).
#'     gridboxskew    Gridbox skewness
#'                    Skewness of the selected grid boxes.
#'     gridboxkurt    Gridbox kurtosis
#'                    Kurtosis of the selected grid boxes.
#'     gridboxmedian  Gridbox median
#'                    Median of the selected grid boxes.
#' 
#'
#' 
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name gridboxstat
NULL
