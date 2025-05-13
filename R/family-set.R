## This file was created automatically, do not edit by hand.
#' Set field info
#'
#' This module sets some field information. Depending on the chosen operator the parameter table, code number, parameter identifier, variable name or level is set. 
#'
#' @details
#'     setcodetab   Set parameter code table
#'                  Sets the parameter code table for all variables.
#'     setcode      Set code number
#'                  Sets the code number for all variables to the same given value.
#'     setparam     Set parameter identifier
#'                  Sets the parameter identifier of the first variable.
#'     setname      Set variable name
#'                  Sets the name of the first variable.
#'     setunit      Set variable unit
#'                  Sets the unit of the first variable.
#'     setlevel     Set level
#'                  Sets the first level of all variables.
#'     setltype     Set GRIB level type
#'                  Sets the GRIB level type of all variables.
#'     setmaxsteps  Set max timesteps
#'                  Sets maximum number of timesteps
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
#' @name set
NULL
