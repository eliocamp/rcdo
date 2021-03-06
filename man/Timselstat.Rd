% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timselstat.R
\name{Timselstat}
\alias{Timselstat}
\alias{cdo_timselavg}
\alias{cdo_timselmax}
\alias{cdo_timselmean}
\alias{cdo_timselmin}
\alias{cdo_timselrange}
\alias{cdo_timselstd}
\alias{cdo_timselstd1}
\alias{cdo_timselsum}
\alias{cdo_timselvar}
\alias{cdo_timselvar1}
\title{Time range statistical values}
\usage{
cdo_timselavg(infile, outfile = NULL)

cdo_timselmax(infile, outfile = NULL)

cdo_timselmean(infile, outfile = NULL)

cdo_timselmin(infile, outfile = NULL)

cdo_timselrange(infile, outfile = NULL)

cdo_timselstd(infile, outfile = NULL)

cdo_timselstd1(infile, outfile = NULL)

cdo_timselsum(infile, outfile = NULL)

cdo_timselvar(infile, outfile = NULL)

cdo_timselvar1(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module computes statistical values for a selected number of timesteps.
According to the chosen operator the minimum, maximum, range, sum, average,
variance or standard deviation of the selected timesteps is written to outfile.
The time of outfile is determined by the time in the middle of all contributing
timesteps of infile. This can be change with the CDO option --timestat_date
\<first|middle|last\>.
}
\details{
\preformatted{ timselmin    Time selection minimum
              For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
}
}
