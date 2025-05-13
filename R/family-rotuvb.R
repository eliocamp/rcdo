## This file was created automatically, do not edit by hand.
#' Rotation
#'
#' This is a special operator for datsets with wind components on a rotated grid, e.g. data from the regional model REMO. It performs a backward transformation of velocity components U and V from a rotated spherical system to a geographical system. 
#'
#' 
#'
#' @section Note: 
#' This is a specific implementation for data from the REMO model, it may not work with data from other sources.
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
#' @name rotuvb
NULL
