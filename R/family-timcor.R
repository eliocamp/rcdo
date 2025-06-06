## This file was created automatically, do not edit by hand.
#' Correlation over time
#'
#' The correlation coefficient is a quantity that gives the quality of a least squares fitting to the original data. This operator correlates each gridpoint of two fields over all timesteps. If there is only one input field, the p-value (probability value) is also written out. With  S(x) = \{t, i_1(t,x) != missval and i_2(t,x) != missval\}  it is  o(1,x) = Cor\{(i_1(t,x), i_2(t,x)), t_1 &lt; t &lt;= t_n\}  For every gridpoint x only those timesteps t belong to the sample, which have i_1(t,x) != missval and i_2(t,x) != missval.
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
#' @name timcor
NULL
