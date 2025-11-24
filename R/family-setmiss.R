# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Set missing value
#'
#' This module sets part of a field to missing value or missing values to a constant value. Which part of the field is set depends on the chosen operator. 
#'
#' @details
#'     setmissval    Set a new missing value
#'                            / newmiss   if i(t,x) EQ miss
#'                   o(t,x) = 
#'                            \\ i(t,x)    if i(t,x) NE miss
#'     setctomiss    Set constant to missing value
#'                            / miss   if i(t,x) EQ c
#'                   o(t,x) = 
#'                            \\ i(t,x) if i(t,x) NE c
#'     setmisstoc    Set missing value to constant
#'                            / c      if i(t,x) EQ miss
#'                   o(t,x) = 
#'                            \\ i(t,x) if i(t,x) NE miss
#'     setrtomiss    Set range to missing value
#'                            / miss   if i(t,x) GE rmin AND i(t,x) LE rmax
#'                   o(t,x) = 
#'                            \\ i(t,x) if i(t,x) LT rmin OR  i(t,x) GT rmax
#'     setvrange     Set valid range
#'                            / miss   if i(t,x) LT rmin OR  i(t,x) GT rmax
#'                   o(t,x) = 
#'                            \\ i(t,x) if i(t,x) GE rmin AND i(t,x) LE rmax
#'     setmisstonn   Set missing value to nearest neighbor
#'                   Set all missing values to the nearest non missing value.
#'                            / i(t,y) if i(t,x) EQ miss AND i(t,y) NE miss
#'                   o(t,x) = 
#'                            \\ i(t,x) if i(t,x) NE miss
#'     setmisstodis  Set missing value to distance-weighted average
#'                   Set all missing values to the distance-weighted average of the nearest non missing values.
#'                   The default number of nearest neighbors is 4.
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
#' @name setmiss
NULL
