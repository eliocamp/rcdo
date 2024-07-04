## This file was created automatically, do not edit by hand.
#' Correlation over time
#'
#' The correlation coefficient is a quantity that gives the quality of a least squares fitting to the original data. This operator correlates each gridpoint of two fields over all timesteps. With  S(x) = {t, i_1(t,x) != missval and i_2(t,x) != missval}  it is  o(1,x) = Cor{(i_1(t,x), i_2(t,x)), t_1 &lt; t &lt;= t_n}  For every gridpoint x only those timesteps t belong to the sample, which have i_1(t,x) != missval and i_2(t,x) != missval.
#'
#' 
#'
#' 
#'
#' @name timcor
NULL
