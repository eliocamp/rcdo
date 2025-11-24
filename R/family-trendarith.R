# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Add or subtract a trend
#'
#' This module is for adding or subtracting a trend computed by the operator trend. 
#'
#' @details
#'     addtrend  Add trend
#'               It is
#'               
#'               o(t,x) = i_1(t,x) + (i_2(1,x) + i_3(1,x)*t)
#'               where t is the timesteps.
#'     subtrend  Subtract trend
#'               It is
#'               
#'               o(t,x) = i_1(t,x) - (i_2(1,x) + i_3(1,x)*t)
#'               where t is the timesteps.
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
#' @name trendarith
NULL
