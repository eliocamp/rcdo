## This file was created automatically, do not edit by hand.
#' Apply operators
#'
#' The apply utility runs the named operators on each input file. The input files must be enclosed in square brackets. This utility can only be used on a series of input files. These are all operators with more than one input file (infiles). Here is an incomplete list of these operators: copy, cat, merge, mergetime, select, ENSSTAT. The parameter operators is a blank-separated list of CDO operators. Use quotation marks if more than one operator is needed. Each operator may have only one input and output stream. 
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
#' @name apply
NULL
