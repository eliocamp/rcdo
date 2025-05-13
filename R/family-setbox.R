## This file was created automatically, do not edit by hand.
#' Set a box to constant
#'
#' Sets a box of the rectangularly understood field to a constant value. The elements outside the box are untouched, the elements inside are set to the given constant. All input fields need to have the same horizontal grid. 
#'
#' @details
#'     setclonlatbox  Set a longitude/latitude box to constant
#'                    Sets the values of a longitude/latitude box to a constant value. The 
#'                    user has to give the longitudes and latitudes of the edges of the box.
#'     setcindexbox   Set an index box to constant
#'                    Sets the values of an index box to a constant value. The user has to 
#'                    give the indices of the edges of the box. The index of the left edge 
#'                    can be greater than the one of the right edge.
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
#' @name setbox
NULL
