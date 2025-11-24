# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Compare two datasets field by field
#'
#' Compares the contents of two datasets field by field. The input datasets need to have the same structure and its fields need to have the dimensions. Try the option names if the number of variables differ. Exit status is 0 if inputs are the same and 1 if they differ. 
#'
#' @details
#'     diff   Compare two datasets listed by parameter id
#'            Provides statistics on differences between two datasets.
#'            For each pair of fields the operator prints one line with the following information:
#'            - Date and Time
#'            - Level, Gridsize and number of Missing values
#'            - Number of different values
#'            - Occurrence of coefficient pairs with different signs (S)
#'            - Occurrence of zero values (Z)
#'            - Maxima of absolute difference of coefficient pairs
#'            - Maxima of relative difference of non-zero coefficient pairs with equal signs
#'            - Parameter identifier
#'     diffn  Compare two datasets listed by parameter name
#'            The same as operator diff. Using the name instead of the
#'            identifier to label the parameter.
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
#' @name diff
NULL
