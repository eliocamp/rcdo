# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Lat/Lon vector plot
#'
#' This operator generates 2D Lon/Lat vector plots. The data for the plot is read from infile. The input is expected to contain two velocity components. Only data on rectilinear Lon/Lat grids are supported. The output file will be named &lt;obase&gt;.&lt;device&gt; where device is the device name. The default output file format is postscript, this can be changed with the device parameter.  Here is a list of all vector plot parameters:  Keyname     &amp; Type    &amp; Description device      &amp; STRING  &amp; Output device (ps, eps, pdf, png, gif, gif_animation, jpeg, svg, kml) projection  &amp; STRING  &amp; Projection (cylindrical, polar_stereographic, robinson, mercator) thin_fac    &amp; FLOAT   &amp; Controls the actual number of wind arrows or flags plotted (default 2). unit_vec    &amp; FLOAT   &amp; Wind speed in m/s represented by a unit vector (1.0cm) step_freq   &amp; INTEGER &amp; Frequency of time steps to be considered for making the animation &amp;         &amp; (device=gif_animation). Default value is &quot;1&quot; (all time steps). &amp;         &amp; Will be ignored if input file has multiple variables. 
#'
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
#' @name magvector
NULL
