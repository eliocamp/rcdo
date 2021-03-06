% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vertintap.R
\name{Vertintap}
\alias{Vertintap}
\alias{cdo_ap2hl}
\alias{cdo_ap2pl}
\title{Vertical interpolation}
\usage{
cdo_ap2hl(infile, outfile = NULL)

cdo_ap2pl(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
Interpolate 3D variables on hybrid sigma height coordinates to pressure or
height levels. The input file must contain the 3D air pressure. The air
pressure is identified by the NetCDF CF standard name air_pressure. Use the
alias ap2plx/ap2hlx or the environment variable EXTRAPOLATE to extrapolate
missing values. This operator requires all variables on the same horizontal
grid.
}
\details{
\preformatted{ ap2pl  Air pressure to pressure level interpolation
        Interpolates 3D variables on hybrid sigma height coordinates to pressure level.
 ap2hl  Air pressure to height level interpolation
        Interpolates 3D variables on hybrid sigma height coordinates to height level.
        The procedure is the same as for the operator ap2pl except for
        the pressure levels being calculated from the heights by:
        plevel = 101325*exp(hlevel/-7000)
}
}
