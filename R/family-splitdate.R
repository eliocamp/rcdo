# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Splits a file into dates
#'
#' This operator splits infile into pieces, one for each different date. The output files will be named &lt;obase&gt;&lt;YYYY-MM-DD&gt;&lt;suffix&gt; where YYYY-MM-DD is the date and suffix is the filename extension derived from the file format. 
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
#' @name splitdate
NULL
