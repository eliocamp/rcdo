% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-ecar99p.R, R/op-cdo-eca_r99p.R
\name{ecar99p}
\alias{ecar99p}
\alias{cdo_eca_r99p}
\title{Extremely wet days wrt 99th percentile of reference period}
\usage{
cdo_eca_r99p(ifile1, ifile2, ofile = NULL)
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
Let infile1 be a time series RR of the daily precipitation amount at wet days (precipitation >= 1 mm) and infile2 be the 99th percentile RRn99 of the daily precipitation amount at wet days for any period used as reference. Then the percentage of wet days with RR > RRn99 is calculated. RRn99 is calculated as the 99th percentile of all wet days of a given climate reference period. Usually infile2 is generated by the operator ydaypctl,99. The date information of a timestep in outfile is the date of the last contributing timestep in infile1.
}
