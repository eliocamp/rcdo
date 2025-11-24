# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Arithmetic on two datasets
#'
#' This module performs simple arithmetic of two datasets. The number of fields in infile1 should be the same as in infile2. The fields in outfile inherit the meta data from infile1. All operators in this module simply process one field after the other from the two input files. Neither the order of the variables nor the date is checked. One of the input files can contain only one timestep or one variable. 
#'
#' @details
#'     add    Add two fields
#'            o(t,x) = i_1(t,x) + i_2(t,x)
#'     sub    Subtract two fields
#'            o(t,x) = i_1(t,x) - i_2(t,x)
#'     mul    Multiply two fields
#'            o(t,x) = i_1(t,x) * i_2(t,x)
#'     div    Divide two fields
#'            o(t,x) = i_1(t,x) / i_2(t,x)
#'     min    Minimum of two fields
#'            o(t,x) = min(i_1(t,x), i_2(t,x))
#'     max    Maximum of two fields
#'            o(t,x) = max(i_1(t,x), i_2(t,x))
#'     atan2  Arc tangent of two fields
#'            The atan2 operator calculates the arc tangent of two fields. The result is
#'            in radians, which is between -PI and PI (inclusive).
#'            
#'            o(t,x) = atan2(i_1(t,x), i_2(t,x))
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
#' @name arith
NULL
