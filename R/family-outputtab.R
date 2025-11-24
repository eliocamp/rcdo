# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Table output
#'
#' This operator prints a table of all input datasets to standard output. infiles is an arbitrary number of input files. All input files need to have the same structure with the same variables on different timesteps. All input fields need to have the same horizontal grid.  The contents of the table depends on the chosen parameters. The format of each table parameter is keyname\[:len\]. len is the optional length of a table entry. The number of significant digits of floating point parameters can be set with the CDO option --precision, the default is 7. Here is a list of all valid keynames:  Keyname    &amp; Type    &amp; Description value      &amp; FLOAT   &amp; Value of the variable \[len:8\] name       &amp; STRING  &amp; Name of the variable \[len:8\] param      &amp; STRING  &amp; Parameter ID (GRIB1: code\[.tabnum\]; GRIB2: num\[.cat\[.dis\]\]) \[len:11\] code       &amp; INTEGER &amp; Code number \[len:4\] x          &amp; FLOAT   &amp; X coordinate of the original grid \[len:6\] y          &amp; FLOAT   &amp; Y coordinate of the original grid \[len:6\] lon        &amp; FLOAT   &amp; Longitude coordinate in degrees \[len:6\] lat        &amp; FLOAT   &amp; Latitude coordinate in degrees \[len:6\] lev        &amp; FLOAT   &amp; Vertical level \[len:6\] xind       &amp; INTEGER &amp; Grid x index \[len:4\] yind       &amp; INTEGER &amp; Grid y index \[len:4\] timestep   &amp; INTEGER &amp; Timestep number \[len:6\] date       &amp; STRING  &amp; Date (format YYYY-MM-DD) \[len:10\] time       &amp; STRING  &amp; Time (format hh:mm:ss) \[len:8\] year       &amp; INTEGER &amp; Year \[len:5\] month      &amp; INTEGER &amp; Month \[len:2\] day        &amp; INTEGER &amp; Day \[len:2\] nohead     &amp; INTEGER &amp; Disable output of header line 
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
#' @name outputtab
NULL
