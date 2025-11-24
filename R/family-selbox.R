# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Select a box
#'
#' Selects grid cells inside a lon/lat or index box. 
#'
#' @details
#'     sellonlatbox  Select a longitude/latitude box
#'                   Selects grid cells inside a lon/lat box. The user must specify the longitude and latitude of the edges of the box.
#'                   Only those grid cells are considered whose grid center lies within the lon/lat box.
#'                   For rotated lon/lat grids the parameters must be specified in rotated coordinates.
#'     selindexbox   Select an index box
#'                   Selects grid cells within an index box. The user must specify the indices of the edges of the box.
#'                   The index of the left edge can be greater then the one of the right edge. Use negative indexing to
#'                   start from the end. The input grid must be a regular lon/lat or a 2D curvilinear grid.
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
#' @name selbox
NULL
