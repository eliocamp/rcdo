# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Conditional select  two fields
#'
#' This operator selects field elements from infile2 or infile3 with respect to infile1 and writes them to outfile. The fields in infile1 are handled as a mask. A value not equal to zero is treated as &quot;true zero is treated as &quot;false&quot;. The number of fields in infile1 has either to be the same as in infile2 or the same as in one timestep of infile2 or only one. infile2 and infile3 need to have the same number of fields. The fields in outfile inherit the meta data from infile2.  / i_2(t,x) if i_1(t,x) NE 0  AND  i_1(t,x) NE miss o(t,x) = &lt;  i_3(t,x) if i_1(t,x) EQ 0  AND  i_1\[t,x) NE miss miss     if i_1(t,x) EQ miss
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
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name cond2
NULL
