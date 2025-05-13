## This file was created automatically, do not edit by hand.
#' Distribute horizontal grid
#'
#' This operator distributes a dataset into smaller pieces. Each output file contains a different region of the horizontal source grid. 2D Lon/Lat grids can be split into nx*ny pieces, where a target grid region contains a structured longitude/latitude box of the source grid. Data on an unstructured grid is split into nx pieces. The output files will be named &lt;obase&gt;&lt;xxx&gt;&lt;suffix&gt; where suffix is the filename extension derived from the file format. xxx will have five digits with the number of the target region. 
#'
#' 
#'
#' @section Note: 
#' This operator needs to open all output files simultaneously. The maximum number of open files depends on the operating system!
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
#' @name distgrid
NULL
