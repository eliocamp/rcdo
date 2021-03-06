% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seltime.R
\name{Seltime}
\alias{Seltime}
\alias{cdo_seldate}
\alias{cdo_selday}
\alias{cdo_selhour}
\alias{cdo_selmonth}
\alias{cdo_selseason}
\alias{cdo_selsmon}
\alias{cdo_seltime}
\alias{cdo_seltimestep}
\alias{cdo_selyear}
\title{Select timesteps}
\usage{
cdo_seldate(infile, outfile = NULL)

cdo_selday(infile, outfile = NULL)

cdo_selhour(infile, outfile = NULL)

cdo_selmonth(infile, outfile = NULL)

cdo_selseason(infile, outfile = NULL)

cdo_selsmon(infile, outfile = NULL)

cdo_seltime(infile, outfile = NULL)

cdo_seltimestep(infile, outfile = NULL)

cdo_selyear(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module selects user specified timesteps from infile and writes them to
outfile. The timesteps selected depends on the chosen operator and the
parameters. A range of integer values can be specified by first/last\link{/inc}.
}
\details{
\preformatted{ seltimestep  Select timesteps
              Selects all timesteps with a timestep in a user given list or range.
 seltime      Select times
              Selects all timesteps with a time in a user given list or range.
 selhour      Select hours
              Selects all timesteps with a hour in a user given list or range.
 selday       Select days
              Selects all timesteps with a day in a user given list or range.
 selmonth     Select months
              Selects all timesteps with a month in a user given list or range.
 selyear      Select years
              Selects all timesteps with a year in a user given list or range.
 selseason    Select seasons
              Selects all timesteps with a month of a season in a user given list.
 seldate      Select dates
              Selects all timesteps with a date in a user given range.
 selsmon      Select single month
              Selects a month and optional an arbitrary number of timesteps before and after this month.
}
}
