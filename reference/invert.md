# Invert latitudes

This operator inverts the latitudes of all fields on a rectilinear grid.

## Usage

``` r
cdo_invertlat(ifile, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
