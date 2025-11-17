# Select fields

This module selects some fields from infiles and writes them to outfile.
infiles is an arbitrary number of input files. All input files need to
have the same structure with the same variables on different timesteps.
The fields selected depends on the chosen parameters. Parameter is a
comma-separated list of "key=value" pairs. A range of integer values can
be specified by first/last\[/inc\]. Wildcards are supported for string
values.

## Usage

``` r
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
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

- name:

  STRING - Comma-separated list of variable names.

- param:

  STRING - Comma-separated list of parameter identifiers.

- code:

  INTEGER - Comma-separated list or first/last\[/inc\] range of code
  numbers.

- level:

  FLOAT - Comma-separated list of vertical levels.

- levrange:

  FLOAT - First and last value of the level range.

- levidx:

  INTEGER - Comma-separated list or first/last\[/inc\] range of index of
  levels.

- zaxisname:

  STRING - Comma-separated list of zaxis names.

- zaxisnum:

  INTEGER - Comma-separated list or first/last\[/inc\] range of zaxis
  numbers.

- ltype:

  INTEGER - Comma-separated list or first/last\[/inc\] range of GRIB
  level types.

- gridname:

  STRING - Comma-separated list of grid names.

- gridnum:

  INTEGER - Comma-separated list or first/last\[/inc\] range of grid
  numbers.

- steptype:

  STRING - Comma-separated list of timestep types
  (constant\|avg\|accum\|min\|max\|range\|diff\|sum)

- date:

  STRING - Comma-separated list of dates (format: YYYY-MM-DDThh:mm:ss).

- startdate:

  STRING - Start date (format: YYYY-MM-DDThh:mm:ss).

- enddate:

  STRING - End date (format: YYYY-MM-DDThh:mm:ss).

- minute:

  INTEGER - Comma-separated list or first/last\[/inc\] range of minutes.

- hour:

  INTEGER - Comma-separated list or first/last\[/inc\] range of hours.

- day:

  INTEGER - Comma-separated list or first/last\[/inc\] range of days.

- month:

  INTEGER - Comma-separated list or first/last\[/inc\] range of months.

- season:

  STRING - Comma-separated list of seasons (substring of DJFMAMJJASOND
  or ANN).

- year:

  INTEGER - Comma-separated list or first/last\[/inc\] range of years.

- dom:

  STRING - Comma-separated list of the day of month (e.g. 29feb).

- timestep:

  INTEGER - Comma-separated list or first/last\[/inc\] range of
  timesteps. Negative values select timesteps from the end (NetCDF
  only).

- timestep_of_year:

  INTEGER - Comma-separated list or first/last\[/inc\] range of
  timesteps of year.

- timestepmask:

  STRING - Read timesteps from a mask file.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Details

    select  Select fields
            Selects all fields with parameters in a user given list.
    delete  Delete fields
            Deletes all fields with parameters in a user given list.
