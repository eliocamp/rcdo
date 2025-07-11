% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-intlevel.R, R/op-cdo-intlevel.R
\name{intlevel}
\alias{intlevel}
\alias{cdo_intlevel}
\title{Linear level interpolation}
\usage{
cdo_intlevel(
  ifile,
  level = NULL,
  zdescription = NULL,
  zvarname = NULL,
  extrapolate = NULL,
  ofile = NULL
)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{level}{FLOAT - Comma-separated list of target levels}

\item{zdescription}{STRING - Path to a file containing a description of the Z-axis}

\item{zvarname}{STRING - Use zvarname as the vertical 3D source coordinate instead of the 1D coordinate variable}

\item{extrapolate}{BOOL - Fill target layers out of the source layer range with the nearest source layer}

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
This operator performs a linear vertical interpolation of 3D variables. The 1D target levels can be specified with the level parameter or read in via a Z-axis description file.
}
