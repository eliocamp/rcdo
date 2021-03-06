% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intyear.R
\name{Intyear}
\alias{Intyear}
\alias{cdo_intyear}
\title{Year interpolation}
\usage{
cdo_intyear(infile1, infile2, obase = NULL)

cdo_intyear(infile1, infile2, obase = NULL)
}
\arguments{
\item{infile1, infile2}{input files.}

\item{obase}{preffix added to the output files.}
}
\description{
This operator performs linear interpolation between two years, timestep by
timestep. The input files need to have the same structure with the same
variables. The output files will be named \<obase\>\<yyyy\>\<suffix\> where
yyyy will be the year and suffix is the filename extension derived from the
file format.
}
\details{
\preformatted{ inttime   Interpolation between timesteps
           This operator creates a new dataset by linear interpolation between timesteps.
           The user has to define the start date/time with an optional increment.
 intntime  Interpolation between timesteps
           This operator performs linear interpolation between timesteps.
           The user has to define the number of timesteps from one timestep to the next.
}
}
