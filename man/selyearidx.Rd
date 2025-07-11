% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-selyearidx.R, R/op-cdo-selyearidx.R
\name{selyearidx}
\alias{selyearidx}
\alias{cdo_selyearidx}
\title{Select year by index}
\usage{
cdo_selyearidx(ifile1, ifile2, ofile = NULL)
}
\arguments{
\item{ifile1, ifile2}{Strings with the path to the input files.}

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
Selects field elements from infile2 according to a year index from infile1. The index of the year in infile1 should be the result of corresponding yearminidx or yearmaxidx operations, respectively.
}
