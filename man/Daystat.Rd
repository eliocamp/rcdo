% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/daystat.R
\name{Daystat}
\alias{Daystat}
\alias{cdo_dayavg}
\alias{cdo_daymax}
\alias{cdo_daymean}
\alias{cdo_daymin}
\alias{cdo_dayrange}
\alias{cdo_daystd}
\alias{cdo_daystd1}
\alias{cdo_daysum}
\alias{cdo_dayvar}
\alias{cdo_dayvar1}
\title{Daily statistical values}
\usage{
cdo_dayavg(infile, outfile = NULL)

cdo_daymax(infile, outfile = NULL)

cdo_daymean(infile, outfile = NULL)

cdo_daymin(infile, outfile = NULL)

cdo_dayrange(infile, outfile = NULL)

cdo_daystd(infile, outfile = NULL)

cdo_daystd1(infile, outfile = NULL)

cdo_daysum(infile, outfile = NULL)

cdo_dayvar(infile, outfile = NULL)

cdo_dayvar1(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module computes statistical values over timesteps of the same day.
Depending on the chosen operator the minimum, maximum, range, sum, average,
variance or standard deviation of timesteps of the same day is written to
outfile. The time of outfile is determined by the time in the middle of all
contributing timesteps of infile. This can be change with the CDO option
--timestat_date \<first|middle|last\>.
}
\details{
\preformatted{ daymin    Daily minimum
           For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:
}
}
