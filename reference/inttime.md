# Time interpolation

This module performs linear interpolation between timesteps.
Interpolation is only performed if both values exist. If both values are
missing values, the result is also a missing value. If only one value
exists, it is taken if the time weighting is greater than or equal to
0.5. So no new value will be created at existing time steps, if the
value is missing there.

## Usage

``` r
cdo_intntime(
  ifile,
  date = NULL,
  time = NULL,
  inc = NULL,
  n = NULL,
  ofile = NULL
)

cdo_inttime(
  ifile,
  date = NULL,
  time = NULL,
  inc = NULL,
  n = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- date:

  STRING - Start date (format YYYY-MM-DD)

- time:

  STRING - Start time (format hh:mm:ss)

- inc:

  STRING - Optional increment (seconds, minutes, hours, days, months,
  years) \[default: 0hour\]

- n:

  INTEGER - Number of timesteps from one timestep to the next

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

    inttime   Interpolation between timesteps
              This operator creates a new dataset by linear interpolation between timesteps.
              The user has to define the start date/time with an optional increment.
    intntime  Interpolation between timesteps
              This operator performs linear interpolation between timesteps.
              The user has to define the number of timesteps from one timestep to the next.
