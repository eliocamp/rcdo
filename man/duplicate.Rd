% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-duplicate.R, R/op-cdo-duplicate.R
\name{duplicate}
\alias{duplicate}
\alias{cdo_duplicate}
\title{Duplicates a dataset}
\usage{
cdo_duplicate(ifile, ndup = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{ndup}{INTEGER - Number of duplicates, default is 2.}

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
This operator duplicates the contents of infile and writes the result to outfile. The optional parameter sets the number of duplicates, the default is 2.
}
