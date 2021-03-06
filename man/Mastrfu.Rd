% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mastrfu.R
\name{Mastrfu}
\alias{Mastrfu}
\alias{cdo_mastrfu}
\title{Mass stream function}
\usage{
cdo_mastrfu(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This is a special operator for the post processing of the atmospheric general
circulation model ECHAM. It computes the mass stream function (code=272). The
input dataset have to be a zonal mean of v-velocity \link{m/s} (code=132) on
pressure levels.
}
\details{
\preformatted{ uvDestag      Destaggering of u/v wind components
               This is a special operator for destaggering of wind components.
               If the file contains a grid with temperature (name='t' or code=11)
               then grid_temp will be used for destaggered wind.
 rotuvNorth    Rotate u/v wind to North pole.
               This is an operator for transformation of wind-vectors from grid-relative to north-pole
               relative for the whole file. (FAST implementation with JACOBIANS)
 projuvLatLon  Cylindrical Equidistant projection
               Thus is an operator for transformation of wind-vectors from the globe-spherical coordinate system
               into a flat Cylindrical Equidistant (lat-lon) projection. (FAST JACOBIAN implementation)
}
}
