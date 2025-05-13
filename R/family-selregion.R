## This file was created automatically, do not edit by hand.
#' Select horizontal regions
#'
#' Selects all grid cells with the center point inside user defined regions or a circle. The resulting grid is unstructured. 
#'
#' @details
#'     selregion  Select cells inside regions
#'                Selects all grid cells with the center point inside the regions.
#'                Regions can be defined by the user via an ASCII file.
#'                Each region consists of the geographic coordinates of a polygon.
#'                Each line of a polygon description file contains the longitude and latitude of one point.
#'                Each polygon description file can contain one or more polygons separated by a line with the character \\&amp;.
#'                
#'                Predefined regions of countries can be specified via the country codes.
#'                A country is specified with dcw:&lt;CountryCode&gt;. Country codes can be combined with the plus sign.
#'     selcircle  Select cells inside a circle
#'                Selects all grid cells with the center point inside a circle. The circle is described by geographic coordinates
#'                of the center and the radius of the circle.
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
#' @name selregion
NULL
