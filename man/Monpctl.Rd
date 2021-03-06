% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/monpctl.R
\name{Monpctl}
\alias{Monpctl}
\alias{cdo_monpctl}
\title{Monthly percentile values}
\usage{
cdo_monpctl(infile1, infile2, infile3, outfile = NULL)

cdo_monpctl(infile1, infile2, infile3, outfile = NULL)

cdo_monpctl(infile1, infile2, infile3, outfile = NULL)
}
\arguments{
\item{infile1, infile2, infile3}{input files.}

\item{outfile}{output file.}
}
\description{
This operator computes percentiles over all timesteps of the same month in
infile1. The algorithm uses histograms with minimum and maximum bounds given in
infile2 and infile3, respectively. The default number of histogram bins is 101.
The default can be overridden by defining the environment variable
CDO_PCTL_NBINS. The files infile2 and infile3 should be the result of
corresponding monmin and monmax operations, respectively. The time of outfile
is determined by the time in the middle of all contributing timesteps of
infile1. This can be change with the CDO option --timestat_date
\<first|middle|last\>. For every adjacent sequence t_1, ...,t_n of timesteps of
the same month it is:
}
\details{
\preformatted{ monmin    Monthly minimum
           For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
}
}
