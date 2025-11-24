# Rotation

This is a special operator for datsets with wind components on a rotated
grid, e.g. data from the regional model REMO. It performs a backward
transformation of velocity components U and V from a rotated spherical
system to a geographical system.

## Usage

``` r
cdo_rotuvb(ifile, u = NULL, v = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- u:

  STRING - Pairs of zonal and meridional velocity components (use
  variable names or code numbers)

- v:

  STRING - Pairs of zonal and meridional velocity components (use
  variable names or code numbers)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Note

This is a specific implementation for data from the REMO model, it may
not work with data from other sources.
