% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subtrend.R
\name{Subtrend}
\alias{Subtrend}
\alias{cdo_subtrend}
\title{Subtract a trend}
\usage{
cdo_subtrend(infile1, infile2, infile3, outfile = NULL)

cdo_subtrend(infile1, infile2, infile3, outfile = NULL)

cdo_subtrend(infile1, infile2, infile3, outfile = NULL)
}
\arguments{
\item{infile1, infile2, infile3}{input files.}

\item{outfile}{output file.}
}
\description{
This operator is for subtracting a trend computed by the operator trend. It is
}
\details{
\preformatted{ ydrunmin   Multi-year daily running minimum
            o(001,x) = min\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day[(i(t+(nts-1)/2)] = 001\}
}
}
