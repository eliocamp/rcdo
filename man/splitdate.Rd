% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-splitdate.R, R/op-cdo-splitdate.R
\name{splitdate}
\alias{splitdate}
\alias{cdo_splitdate}
\title{Splits a file into dates}
\usage{
cdo_splitdate(ifile, obase = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{obase}{String with the basename of the output files.}
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
This operator splits infile into pieces, one for each different date. The output files will be named <obase><YYYY-MM-DD><suffix> where YYYY-MM-DD is the date and suffix is the filename extension derived from the file format.
}
