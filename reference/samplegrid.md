# Resample grid

This is a special operator for resampling the horizontal grid. No
interpolation takes place. Resample factor=2 means every second grid
point is removed. Only rectilinear and curvilinear source grids are
supported by this operator.

## Usage

``` r
cdo_samplegrid(ifile, factor = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- factor:

  INTEGER - Resample factor, typically 2, which will half the resolution

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
