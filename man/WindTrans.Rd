% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/windtrans.R
\name{WindTrans}
\alias{WindTrans}
\alias{cdo_projuvLatLon}
\alias{cdo_rotuvNorth}
\alias{cdo_uvDestag}
\title{Wind Transformation}
\usage{
cdo_projuvLatLon(infile, outfile = NULL)

cdo_rotuvNorth(infile, outfile = NULL)

cdo_uvDestag(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module contains special operators for datsets with wind components on a
rotated lon/lat grid, e.g. data from the regional model HIRLAM or REMO.
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
