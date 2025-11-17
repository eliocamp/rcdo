# Get grid cell index

Get the grid cell index of one grid point selected by the parameter lon
and lat.

## Usage

``` r
cdo_gridcellindex(ifile, lon = NULL, lat = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- lon:

  INTEGER - Longitude of the grid cell in degree

- lat:

  INTEGER - Latitude of the grid cell in degree

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
