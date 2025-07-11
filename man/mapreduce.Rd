% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-mapreduce.R, R/op-cdo-reducegrid.R
\name{mapreduce}
\alias{mapreduce}
\alias{cdo_reducegrid}
\title{Reduce fields to userdefined mask}
\usage{
cdo_reducegrid(ifile, mask = NULL, limitCoordsOutput = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{mask}{STRING - file which holds the mask field}

\item{limitCoordsOutput}{STRING - optional parameter to limit coordinates output: 'nobounds' disables coordinate bounds, 'nocoords' avoids all coordinate information}

\item{ofile}{String with the path to the output file.}
}
\value{
Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with the
basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
}
\description{
This module holds an operator for data reduction based on a user defined mask. The output grid is unstructured and includes coordinate bounds. Bounds can be avoided by using the additional 'nobounds' keyword. With 'nocoords' given, coordinates a completely suppressed.
}
