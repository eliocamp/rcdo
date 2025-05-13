## This file was created automatically, do not edit by hand.
#' Temporal filling of missing values
#'
#' This operator fills in temporally missing values. The method parameter can be used to select the filling method. The default method=nearest fills missing values with the nearest neighbor value. Other options are forward and backward to fill missing values by forward or backward propagation of values. Use the limit parameter to set the maximum number of consecutive missing values to fill and max_gaps to set the maximum number of gaps to fill. 
#'
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
#' @name timfillmiss
NULL
