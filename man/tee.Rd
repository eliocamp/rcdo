% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-tee.R, R/op-cdo-tee.R
\name{tee}
\alias{tee}
\alias{cdo_tee}
\title{Duplicate a data stream and write it to file}
\usage{
cdo_tee(ifile, outfile2 = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{outfile2}{STRING - Destination filename for the copy of the input file}

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
This operator copies the input dataset to outfile1 and outfile2. The first output stream in outfile1 can be further processesd with other cdo operators. The second output outfile2 is written to disk. It can be used to store intermediate results to a file.
}
