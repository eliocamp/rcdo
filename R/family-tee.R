## This file was created automatically, do not edit by hand.
#' Duplicate a data stream and write it to file
#'
#' This operator copies the input dataset to outfile1 and outfile2. The first output stream in outfile1 can be further processesd with other cdo operators. The second output outfile2 is written to disk. It can be used to store intermediate results to a file. 
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
#' @name tee
NULL
