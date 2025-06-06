## This file was created automatically, do not edit by hand.
#' Select fields
#'
#' This module selects some fields from infiles and writes them to outfile. infiles is an arbitrary number of input files. All input files need to have the same structure with the same variables on different timesteps. The fields selected depends on the chosen parameters. Parameter is a comma-separated list of &quot;key=value&quot; pairs. A range of integer values can be specified by first/last\[/inc\]. Wildcards are supported for string values. 
#'
#' @details
#'     select  Select fields
#'             Selects all fields with parameters in a user given list.
#'     delete  Delete fields
#'             Deletes all fields with parameters in a user given list.
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
#' @name select
NULL
