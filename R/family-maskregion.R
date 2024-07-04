## This file was created automatically, do not edit by hand.
#' Mask regions
#'
#' Masks different regions of the input fields. The grid cells inside a region are untouched, the cells outside are set to missing value. Considered are only those grid cells with the grid center inside the regions. All input fields must have the same horizontal grid.  Regions can be defined by the user via an ASCII file. Each region consists of the geographic coordinates of a convex polygon. Each line of a polygon description file contains the longitude and latitude of one point. Each polygon description file can contain one or more polygons separated by a line with the character \\&amp;.  Predefined regions of countries can be specified via the country codes. A country is specified with dcw:&lt;CountryCode&gt;. Country codes can be combined with the plus sign. 
#'
#' 
#'
#' 
#'
#' @name maskregion
NULL
