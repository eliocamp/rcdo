# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Split selected timesteps
#'
#' This operator splits infile into pieces, one for each adjacent sequence t_1, ...., t_n of timesteps of the same selected time range. The output files will be named &lt;obase&gt;&lt;nnnnnn&gt;&lt;suffix&gt; where nnnnnn is the sequence number and suffix is the filename extension derived from the file format. 
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
#' @name splitsel
NULL
