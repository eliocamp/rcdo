# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Arithmetic with a constant
#'
#' This module performs simple arithmetic with all field elements of a dataset and a constant. The fields in outfile inherit the meta data from infile. 
#'
#' @details
#'     addc  Add a constant
#'           o(t,x) = i(t,x) + c
#'     subc  Subtract a constant
#'           o(t,x) = i(t,x) - c
#'     mulc  Multiply with a constant
#'           o(t,x) = i(t,x) * c
#'     divc  Divide by a constant
#'           o(t,x) = i(t,x) / c
#'     minc  Minimum of a field and a constant
#'           o(t,x) = min(i(t,x), c)
#'     maxc  Maximum of a field and a constant
#'           o(t,x) = max(i(t,x), c)
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
#' @name arithc
NULL
