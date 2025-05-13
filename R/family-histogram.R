## This file was created automatically, do not edit by hand.
#' Histogram
#'
#' This module creates bins for a histogram of the input data. The bins have to be adjacent and have non-overlapping intervals. The user has to define the bounds of the bins. The first value is the lower bound and the second value the upper bound of the first bin. The bounds of the second bin are defined by the second and third value, aso. Only 2-dimensional input fields are allowed. The output file contains one vertical level for each of the bins requested. 
#'
#' @details
#'     histcount  Histogram count
#'                Number of elements in the bin range.
#'     histsum    Histogram sum
#'                Sum of elements in the bin range.
#'     histmean   Histogram mean
#'                Mean of elements in the bin range.
#'     histfreq   Histogram frequency
#'                Relative frequency of elements in the bin range.
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name histogram
NULL
