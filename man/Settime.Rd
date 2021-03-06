% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/settime.R
\name{Settime}
\alias{Settime}
\alias{cdo_setcalendar}
\alias{cdo_setdate}
\alias{cdo_setday}
\alias{cdo_setmon}
\alias{cdo_setreftime}
\alias{cdo_settaxis}
\alias{cdo_settbounds}
\alias{cdo_settime}
\alias{cdo_settunits}
\alias{cdo_setyear}
\alias{cdo_shifttime}
\title{Set time}
\usage{
cdo_setcalendar(infile, outfile = NULL)

cdo_setdate(infile, outfile = NULL)

cdo_setday(infile, outfile = NULL)

cdo_setmon(infile, outfile = NULL)

cdo_setreftime(infile, outfile = NULL)

cdo_settaxis(infile, outfile = NULL)

cdo_settbounds(infile, outfile = NULL)

cdo_settime(infile, outfile = NULL)

cdo_settunits(infile, outfile = NULL)

cdo_setyear(infile, outfile = NULL)

cdo_shifttime(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module sets the time axis or part of the time axis. Which part of the time
axis is overwritten/created depends on the chosen operator.
}
\details{
\preformatted{ setdate      Set date
              Sets the date in every timestep to the same given value.
 settime      Set time of the day
              Sets the time in every timestep to the same given value.
 setday       Set day
              Sets the day in every timestep to the same given value.
 setmon       Set month
              Sets the month in every timestep to the same given value.
 setyear      Set year
              Sets the year in every timestep to the same given value.
 settunits    Set time units
              Sets the base units of a relative time axis.
 settaxis     Set time axis
              Sets the time axis.
 settbounds   Set time bounds
              Sets the time bounds.
 setreftime   Set reference time
              Sets the reference time of a relative time axis.
 setcalendar  Set calendar
              Sets the calendar of a relative time axis.
 shifttime    Shift timesteps
              Shifts all timesteps by the parameter sval.
}
}
