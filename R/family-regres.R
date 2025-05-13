## This file was created automatically, do not edit by hand.
#' Regression
#'
#' The values of the input file infile are assumed to be distributed as N(a+b*t,S^2) with unknown a, b and S^2. This operator estimates the parameter b. For every field element x only those timesteps t belong to the sample S(x), which have i(t,x) NE miss. It is assumed that all timesteps are equidistant, if this is not the case set the parameter equal=false. 
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name regres
NULL
