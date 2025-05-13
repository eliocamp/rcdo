## This file was created automatically, do not edit by hand.
#' Conditional select one field
#'
#' This module selects field elements from infile2 with respect to infile1 and writes them to outfile. The fields in infile1 are handled as a mask. A value not equal to zero is treated as &quot;true zero is treated as &quot;false&quot;. The number of fields in infile1 has either to be the same as in infile2 or the same as in one timestep of infile2 or only one. The fields in outfile inherit the meta data from infile2. 
#'
#' @details
#'     ifthen     If then
#'                         / i_2(t,x) if i_1(t,x) NE 0  AND  i_1(t,x) NE miss
#'                o(t,x) =
#'                         \\ miss     if i_1(t,x) EQ 0  OR   i_1(t,x) EQ miss
#'     ifnotthen  If not then
#'                         / i_2(t,x) if i_1(t,x) EQ 0  AND  i_1(t,x) NE miss
#'                o(t,x) = 
#'                         \\ miss     if i_1(t,x) NE 0  OR   i_1(t,x) EQ miss
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
#' @name cond
NULL
