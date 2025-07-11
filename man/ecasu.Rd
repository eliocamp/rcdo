% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-ecasu.R, R/op-cdo-eca_su.R,
%   R/op-cdo-etccdi_su.R
\name{ecasu}
\alias{ecasu}
\alias{cdo_eca_su}
\alias{cdo_etccdi_su}
\title{Summer days index per time period}
\usage{
cdo_eca_su(ifile, T = NULL, freq = NULL, ofile = NULL)

cdo_etccdi_su(ifile, T = NULL, freq = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{T}{FLOAT - Temperature threshold (unit: °C; default: T = 25°C)}

\item{freq}{STRING - Output frequency (year, month)}

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
Let infile be a time series of the daily maximum temperature TX, then the number of days where TX > T is counted. The number T is an optional parameter with default T = 25°C. Note that TX have to be given in units of Kelvin, whereas T have to be given in degrees Celsius. Parameter is a comma-separated list of "key=values" pairs.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{eca_su     Summer days index per time period
           The operator counts over the entire time series.
           The date information of a timestep in outfile is the date of
           the last contributing timestep in infile.
etccdi_su  Summer days index per time period
           The default output frequency is yearly.
           The date information of a timestep in outfile is the mid of
           the frequency interval.
}\if{html}{\out{</div>}}
}
