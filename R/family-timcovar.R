## This file was created automatically, do not edit by hand.
#' Covariance over time
#'
#' This operator calculates the covariance of two fields at each gridpoint over all timesteps. With  S(x) = \{t, i_1(t,x) != missval and i_2(t,x) != missval\}  it is  o(1,x) = Covar\{(i_1(t,x), i_2(t,x)), t_1 &lt; t &lt;= t_n\}  For every gridpoint x only those timesteps t belong to the sample, which have i_1(t,x) != missval and i_2(t,x) != missval.
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
#' @name timcovar
NULL
