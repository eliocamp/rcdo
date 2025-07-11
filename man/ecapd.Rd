% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-ecapd.R, R/op-cdo-eca_pd.R,
%   R/op-cdo-eca_r10mm.R, R/op-cdo-eca_r20mm.R, R/op-cdo-etccdi_r1mm.R
\name{ecapd}
\alias{ecapd}
\alias{cdo_eca_pd}
\alias{cdo_eca_r10mm}
\alias{cdo_eca_r20mm}
\alias{cdo_etccdi_r1mm}
\title{Precipitation days index per time period}
\usage{
cdo_eca_pd(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_eca_r10mm(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_eca_r20mm(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_etccdi_r1mm(ifile, x = NULL, freq = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{x}{FLOAT - Daily precipitation amount threshold in [mm]}

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
Let infile be a time series of the daily precipitation amount RR in [mm] (or alternatively in [kg m-2]), then the number of days where RR is at least x mm is counted. eca_r10mm and eca_r20mm are specific ECA operators with a daily precipitation amount of 10 and 20 mm respectively. The date information of a timestep in outfile is the date of the last contributing timestep in infile except for the etccdi operator. Parameter is a comma-separated list of "key=values" pairs.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{eca_pd       Precipitation days index per time period
             Generic ECA operator with daily precipitation sum exceeding x mm.
eca_r10mm    Heavy precipitation days index per time period
             Specific ECA operator with daily precipitation sum exceeding 10 mm.
eca_r20mm    Very heavy precipitation days index per time period
             Specific ECA operator with daily precipitation sum exceeding 20 mm.
etccdi_r1mm  Precipitation days index per time period
             The default output frequency is yearly.
             The date information of a timestep in outfile is the mid of
             the frequency interval.
}\if{html}{\out{</div>}}
}
\section{Note}{

Precipitation rates in [mm/s] have to be converted to precipitation amounts (multiply with 86400 s). Apart from metadata information the result of eca_pd,1 and eca_rr1 is the same.
}

