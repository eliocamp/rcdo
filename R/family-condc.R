## This file was created automatically, do not edit by hand.
#' Conditional select a constant
#'
#' This module creates fields with a constant value or missing value. The fields in infile are handled as a mask. A value not equal to zero is treated as &quot;true zero is treated as &quot;false&quot;. 
#'
#' @details
#'     ifthenc     If then constant
#'                          / c      if i(t,x) NE 0  AND  i(t,x) NE miss
#'                 o(t,x) =
#'                          \\ miss   if i(t,x) EQ 0  OR   i(t,x) EQ miss
#'     ifnotthenc  If not then constant
#'                          / c      if i(t,x) EQ 0  AND  i(t,x) NE miss
#'                 o(t,x) =
#'                          \\ miss   if i(t,x) NE 0  OR   i(t,x) EQ miss
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
#' @name condc
NULL
