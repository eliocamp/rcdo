% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/invert.R
\name{Invert}
\alias{Invert}
\alias{cdo_invertlat}
\title{Invert latitudes}
\usage{
cdo_invertlat(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This operator inverts the latitudes of all fields on a rectilinear grid.
}
\details{
\preformatted{ setzaxis        Set z-axis
                 This operator sets the z-axis description of all variables with the same number of level as the new z-axis.
 genlevelbounds  Generate level bounds
                 Generates the layer bounds of the z-axis.
}
}
