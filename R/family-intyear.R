## This file was created automatically, do not edit by hand.
#' Year interpolation
#'
#' This operator performs linear interpolation between two years, timestep by timestep. The input files need to have the same structure with the same variables. The output files will be named &lt;obase&gt;&lt;yyyy&gt;&lt;suffix&gt; where yyyy will be the year and suffix is the filename extension derived from the file format. 
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
#' @name intyear
NULL
