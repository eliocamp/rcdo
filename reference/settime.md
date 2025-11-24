# Set time

This module sets the time axis or part of the time axis. Which part of
the time axis is overwritten/created depends on the chosen operator. The
number of time steps does not change.

## Usage

``` r
cdo_setcalendar(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_setdate(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_setday(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_setmon(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_setreftime(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_settaxis(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_settbounds(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_settime(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_settunits(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_setyear(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)

cdo_shifttime(
  ifile,
  day = NULL,
  month = NULL,
  year = NULL,
  units = NULL,
  date = NULL,
  time = NULL,
  inc = NULL,
  frequency = NULL,
  calendar = NULL,
  shiftValue = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- day:

  INTEGER - Value of the new day

- month:

  INTEGER - Value of the new month

- year:

  INTEGER - Value of the new year

- units:

  STRING - Base units of the time axis
  (seconds\|minutes\|hours\|days\|months\|years)

- date:

  STRING - Date (format: YYYY-MM-DD)

- time:

  STRING - Time (format: hh:mm:ss)

- inc:

  STRING - Optional increment
  (seconds\|minutes\|hours\|days\|months\|years) \[default: 1hour\]

- frequency:

  STRING - Frequency of the time series (hour\|day\|month\|year)

- calendar:

  STRING - Calendar
  (standard\|proleptic_gregorian\|360_day\|365_day\|366_day)

- shiftValue:

  STRING - Shift value (e.g. -3hour)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    setdate      Set date
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
                 Sets the calendar attribute of a relative time axis.
    shifttime    Shift timesteps
                 Shifts all timesteps by the parameter shiftValue.
