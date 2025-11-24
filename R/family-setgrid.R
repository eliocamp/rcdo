# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Set grid information
#'
#' This module modifies the metadata of the horizontal grid. Depending on the chosen operator a new grid description is set, the coordinates are converted or the grid cell area is added. 
#'
#' @details
#'     setgrid        Set grid
#'                    Sets a new grid description. The input fields need to have the same grid size as the size
#'                    of the target grid description.
#'     setgridtype    Set grid type
#'                    Sets the grid type of all input fields. The following grid types are available:
#'                    curvilinear &quot;    &quot;    Converts a regular grid to a curvilinear grid
#'                    unstructured&quot;    &quot;    Converts a regular or curvilinear grid to an unstructured grid
#'                    dereference &quot;    &quot;    Dereference a reference to a grid
#'                    regular     &quot;    &quot;    Linear interpolation of a reduced Gaussian grid to a regular Gaussian grid
#'                    regularnn   &quot;    &quot;    Nearest neighbor interpolation of a reduced Gaussian grid to a regular Gaussian grid
#'                    lonlat      &quot;    &quot;    Converts a regular lonlat grid stored as a curvilinear grid back to a lonlat grid
#'                    projection  &quot;    &quot;    Removes the geographical coordinates if projection parameter available
#'     setgridarea    Set grid cell area
#'                    Sets the grid cell area. The parameter gridarea is the path to a data file,
#'                    the first field is used as grid cell area. The input fields need to have the same
#'                    grid size as the grid cell area. The grid cell area is used to compute
#'                    the weights of each grid cell if needed by an operator, e.g. for fldmean.
#'     setgridmask    Set grid mask
#'                    Sets the grid mask. The parameter gridmask is the path to a data file,
#'                    the first field is used as the grid mask. The input fields need to have the same
#'                    grid size as the grid mask. The grid mask is used as the target grid mask for
#'                    remapping, e.g. for remapbil.
#'     setprojparams  Set proj params
#'                    Sets the proj_params attribute of a projection. This attribute is used to compute
#'                    geographic coordinates of a projecton with the proj library.
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
#' @name setgrid
NULL
