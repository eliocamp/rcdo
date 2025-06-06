## This file was created automatically, do not edit by hand.
#' Multiyear monthly arithmetic
#'
#' This module performs simple arithmetic of a time series and one timestep with the same month of year. For each field in infile1 the corresponding field of the timestep in infile2 with the same month of year is used. The input files need to have the same structure with the same variables. Usually infile2 is generated by an operator of the module YMONSTAT. 
#'
#' @details
#'     ymonadd  Add multi-year monthly time series
#'              Adds a time series and a multi-year monthly time series.
#'     ymonsub  Subtract multi-year monthly time series
#'              Subtracts a time series and a multi-year monthly time series.
#'     ymonmul  Multiply multi-year monthly time series
#'              Multiplies a time series with a multi-year monthly time series.
#'     ymondiv  Divide multi-year monthly time series
#'              Divides a time series by a multi-year monthly time series.
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
#' @name ymonarith
NULL
