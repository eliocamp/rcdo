# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Smooth grid points
#'
#' Smooth all grid points of a horizontal grid. Options is a comma-separated list of &quot;key=value&quot; pairs with optional parameters. 
#'
#' @details
#'     smooth   Smooth grid points
#'              Performs a N point smoothing on all input fields. The number of points used depend
#'              on the search radius (radius) and the maximum number of points (maxpoints).
#'              Per default all points within the search radius of 1degree are used.
#'              The weights for the points depend on the weighting method and the distance.
#'              The implemented weighting method is linear with constant default weights of 0.25
#'              at distance 0 (weight0) and at the search radius (weightR).
#'     smooth9  9 point smoothing
#'              Performs a 9 point smoothing on all fields with a quadrilateral curvilinear grid.
#'              The result at each grid point is a weighted average of the grid point plus
#'              the 8 surrounding points. The center point receives a weight of 1.0, the
#'              points at each side and above and below receive a weight of 0.5, and corner
#'              points receive a weight of 0.3.
#'              All 9 points are multiplied by their weights and summed, then divided by
#'              the total weight to obtain the smoothed value. Any missing data points are
#'              not included in the sum; points beyond the grid boundary are considered to
#'              be missing. Thus the final result may be the result of an averaging with less
#'              than 9 points.
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
#' @name smooth
NULL
