% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecaid.R
\name{EcaId}
\alias{EcaId}
\alias{cdo_eca_id}
\title{Ice days index per time period}
\usage{
cdo_eca_id(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
Let infile be a time series of the daily maximum temperature TX, then the
number of days where TX \< 0 °C is counted. Note that TX have to be given in
units of Kelvin. The date information of a timestep in outfile is the date of
the last contributing timestep in infile.
}
\details{
\preformatted{ contour  Contour plot
          The operator contour generates the discrete contour lines of the input field values.
          The following additional parameters are valid for contour operator,
          module in addition to the common plot parameters:
}
}
