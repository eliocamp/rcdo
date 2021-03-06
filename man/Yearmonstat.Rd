% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/yearmonstat.R
\name{Yearmonstat}
\alias{Yearmonstat}
\alias{cdo_yearmonmean}
\title{Yearly mean from monthly data}
\usage{
cdo_yearmonmean(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This operator computes the yearly mean of a monthly time series. Each month is
weighted with the number of days per month. The time of outfile is determined
by the time in the middle of all contributing timesteps of infile.
}
\details{
\preformatted{ monmin    Monthly minimum
           For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
}
}
