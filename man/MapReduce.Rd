% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapreduce.R
\name{MapReduce}
\alias{MapReduce}
\alias{cdo_reducegrid}
\title{Reduce fields to user-defined mask}
\usage{
cdo_reducegrid(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module holds an operator for data reduction based on a user defined mask.
The output grid is unstructured and includes coordinate bounds. Bounds can be
avoided by using the additional 'nobounds' keyword. With 'nocoords' given,
coordinates a completely suppressed.
}
\details{
\preformatted{ ifthenc     If then constant
                      / c      if i(t,x) NE 0  AND  i(t,x) NE miss
             o(t,x) =
                      \\\\ miss   if i(t,x) EQ 0  OR   i(t,x) EQ miss
 ifnotthenc  If not then constant
                      / c      if i(t,x) EQ 0  AND  i(t,x) NE miss
             o(t,x) =
                      \\\\ miss   if i(t,x) NE 0  OR   i(t,x) EQ miss
}
}
