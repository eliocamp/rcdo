# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Dataset description
#'
#' This module provides operators to print meta information about a dataset. The printed meta-data depends on the chosen operator. 
#'
#' @details
#'     partab    Parameter table
#'               Prints all available meta information of the variables.
#'     codetab   Parameter code table
#'               Prints a code table with a description of all variables.
#'               For each variable the operator prints one line listing the
#'               code, name, description and units.
#'     griddes   Grid description
#'               Prints the description of all grids.
#'     zaxisdes  Z-axis description
#'               Prints the description of all z-axes.
#'     vct       Vertical coordinate table
#'               Prints the vertical coordinate table.
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
#' @name filedes
NULL
