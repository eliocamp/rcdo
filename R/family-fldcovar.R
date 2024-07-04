## This file was created automatically, do not edit by hand.
#' Covariance in grid space
#'
#' This operator calculates the covariance of two fields over all gridpoints for each timestep. With  S(t) = {x, i_1(t,x) != missval and i_2(t,x) != missval}  it is  o(t,1) = Covar{(i_1(t,x), i_2(t,x)), x_1 &lt; x &lt;= x_n}  where w(x) are the area weights obtained by the input streams. For every timestep t only those field elements x belong to the sample, which have i_1(t,x) != missval and i_2(t,x) != missval.
#'
#' 
#'
#' 
#'
#' @name fldcovar
NULL
