# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Arithmetic with latitude
#'
#' This module multiplies or divides each field element with the cosine of the latitude. 
#'
#' @details
#'     mulcoslat  Multiply with the cosine of the latitude
#'                o(t,x) = i(t,x) * cos(latitude(x))
#'     divcoslat  Divide by cosine of the latitude
#'                o(t,x) = i(t,x) / cos(latitude(x))
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
#' @name arithlat
NULL
