## This file was created automatically, do not edit by hand.
#' Conditional select a constant
#'
#' This module creates fields with a constant value or missing value. The fields in infile are handled as a mask. A value not equal to zero is treated as &quot;true zero is treated as &quot;false&quot;. 
#'
#' @details
#'     ifthenc     If then constant
#'                          / c      if i(t,x) NE 0  AND  i(t,x) NE miss
#'                 o(t,x) =
#'                          \\ miss   if i(t,x) EQ 0  OR   i(t,x) EQ miss
#'     ifnotthenc  If not then constant
#'                          / c      if i(t,x) EQ 0  AND  i(t,x) NE miss
#'                 o(t,x) =
#'                          \\ miss   if i(t,x) NE 0  OR   i(t,x) EQ miss
#' 
#'
#' 
#'
#' @name condc
NULL
