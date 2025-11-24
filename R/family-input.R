# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Formatted input
#'
#' This module reads time series of one 2D variable from standard input. All input fields need to have the same horizontal grid. The format of the input depends on the chosen operator. 
#'
#' @details
#'     input     ASCII input
#'               Reads fields with ASCII numbers from standard input and stores them
#'               in outfile. The numbers read are exactly that ones which are written 
#'               out by the output operator.
#'     inputsrv  SERVICE ASCII input
#'               Reads fields with ASCII numbers from standard input and stores them 
#'               in outfile. Each field should have a header of 8 integers (SERVICE likely).
#'               The numbers that are read are exactly that ones which are written out by 
#'               the outputsrv operator.
#'     inputext  EXTRA ASCII input
#'               Read fields with ASCII numbers from standard input and stores them 
#'               in outfile. Each field should have header of 4 integers (EXTRA likely).
#'               The numbers read are exactly that ones which are written out by 
#'               the outputext operator.
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
#' @name input
NULL
