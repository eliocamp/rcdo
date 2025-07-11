% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-yseaspctl.R, R/op-cdo-yseaspctl.R
\name{yseaspctl}
\alias{yseaspctl}
\alias{cdo_yseaspctl}
\title{Multiyear seasonal percentile values}
\usage{
cdo_yseaspctl(ifile1, ifile2, ifile3, p = NULL, ofile = NULL)
}
\arguments{
\item{ifile1, ifile2, ifile3}{Strings with the path to the input files.}

\item{p}{FLOAT - Percentile number in \{0, ..., 100\}}

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
This operator writes a certain percentile of each season in infile1 to outfile. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by setting the environment variable CDO_PCTL_NBINS to a different value. The files infile2 and infile3 should be the result of corresponding yseasmin and yseasmax operations, respectively. The date information in an output field is the date of the last contributing input field.  o(1,x) = pth percentile \{i(t,x), month(i(t)) = 12, 01, 02\} o(2,x) = pth percentile \{i(t,x), month(i(t)) = 03, 04, 05\} o(3,x) = pth percentile \{i(t,x), month(i(t)) = 06, 07, 08\} o(4,x) = pth percentile \{i(t,x), month(i(t)) = 09, 10, 11\}
}
