% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-select.R, R/op-cdo-delete.R,
%   R/op-cdo-select.R
\name{select}
\alias{select}
\alias{cdo_delete}
\alias{cdo_select}
\title{Select fields}
\usage{
cdo_delete(
  ifiles,
  name = NULL,
  param = NULL,
  code = NULL,
  level = NULL,
  levrange = NULL,
  levidx = NULL,
  zaxisname = NULL,
  zaxisnum = NULL,
  ltype = NULL,
  gridname = NULL,
  gridnum = NULL,
  steptype = NULL,
  date = NULL,
  startdate = NULL,
  enddate = NULL,
  minute = NULL,
  hour = NULL,
  day = NULL,
  month = NULL,
  season = NULL,
  year = NULL,
  dom = NULL,
  timestep = NULL,
  timestep_of_year = NULL,
  timestepmask = NULL,
  ofile = NULL
)

cdo_select(
  ifiles,
  name = NULL,
  param = NULL,
  code = NULL,
  level = NULL,
  levrange = NULL,
  levidx = NULL,
  zaxisname = NULL,
  zaxisnum = NULL,
  ltype = NULL,
  gridname = NULL,
  gridnum = NULL,
  steptype = NULL,
  date = NULL,
  startdate = NULL,
  enddate = NULL,
  minute = NULL,
  hour = NULL,
  day = NULL,
  month = NULL,
  season = NULL,
  year = NULL,
  dom = NULL,
  timestep = NULL,
  timestep_of_year = NULL,
  timestepmask = NULL,
  ofile = NULL
)
}
\arguments{
\item{ifiles}{Character vector with the path to the input files.}

\item{name}{STRING - Comma-separated list of variable names.}

\item{param}{STRING - Comma-separated list of parameter identifiers.}

\item{code}{INTEGER - Comma-separated list or first/last[/inc] range of code numbers.}

\item{level}{FLOAT - Comma-separated list of vertical levels.}

\item{levrange}{FLOAT - First and last value of the level range.}

\item{levidx}{INTEGER - Comma-separated list or first/last[/inc] range of index of levels.}

\item{zaxisname}{STRING - Comma-separated list of zaxis names.}

\item{zaxisnum}{INTEGER - Comma-separated list or first/last[/inc] range of zaxis numbers.}

\item{ltype}{INTEGER - Comma-separated list or first/last[/inc] range of GRIB level types.}

\item{gridname}{STRING - Comma-separated list of grid names.}

\item{gridnum}{INTEGER - Comma-separated list or first/last[/inc] range of grid numbers.}

\item{steptype}{STRING - Comma-separated list of timestep types (constant|avg|accum|min|max|range|diff|sum)}

\item{date}{STRING - Comma-separated list of dates (format: YYYY-MM-DDThh:mm:ss).}

\item{startdate}{STRING - Start date (format: YYYY-MM-DDThh:mm:ss).}

\item{enddate}{STRING - End date (format: YYYY-MM-DDThh:mm:ss).}

\item{minute}{INTEGER - Comma-separated list or first/last[/inc] range of minutes.}

\item{hour}{INTEGER - Comma-separated list or first/last[/inc] range of hours.}

\item{day}{INTEGER - Comma-separated list or first/last[/inc] range of days.}

\item{month}{INTEGER - Comma-separated list or first/last[/inc] range of months.}

\item{season}{STRING - Comma-separated list of seasons (substring of DJFMAMJJASOND or ANN).}

\item{year}{INTEGER - Comma-separated list or first/last[/inc] range of years.}

\item{dom}{STRING - Comma-separated list of the day of month (e.g. 29feb).}

\item{timestep}{INTEGER - Comma-separated list or first/last[/inc] range of timesteps. Negative values select timesteps from the end (NetCDF only).}

\item{timestep_of_year}{INTEGER - Comma-separated list or first/last[/inc] range of timesteps of year.}

\item{timestepmask}{STRING - Read timesteps from a mask file.}

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
This module selects some fields from infiles and writes them to outfile. infiles is an arbitrary number of input files. All input files need to have the same structure with the same variables on different timesteps. The fields selected depends on the chosen parameters. Parameter is a comma-separated list of "key=value" pairs. A range of integer values can be specified by first/last[/inc]. Wildcards are supported for string values.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{select  Select fields
        Selects all fields with parameters in a user given list.
delete  Delete fields
        Deletes all fields with parameters in a user given list.
}\if{html}{\out{</div>}}
}
