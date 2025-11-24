# Replace variable values

This module replaces old variable values with new values, depending on
the operator.

## Usage

``` r
cdo_setrtoc(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)

cdo_setrtoc2(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)

cdo_setvals(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- oldval:

  FLOAT - Pairs of old and new values

- newval:

  FLOAT - Pairs of old and new values

- rmin:

  FLOAT - Lower bound

- rmax:

  FLOAT - Upper bound

- c:

  FLOAT - New value - inside range

- c2:

  FLOAT - New value - outside range

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

    setvals   Set list of old values to new values
              Supply a list of n pairs of old and new values.
    setrtoc   Set range to constant
                       / c      if i(t,x) GE rmin AND i(t,x) LE rmax
              o(t,x) =
                       \\ i(t,x) if i(t,x) LT rmin AND i(t,x) GT rmax
    setrtoc2  Set range to constant others to constant2
                       / c      if i(t,x) GE rmin AND i(t,x) LE rmax
              o(t,x) =
                       \\ c2     if i(t,x) LT rmin AND i(t,x) GT rmax
