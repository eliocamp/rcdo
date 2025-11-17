# Verify grid coordinates

This operator verifies the coordinates of all horizontal grids found in
infile. Among other things, it searches for duplicate cells, non-convex
cells, and whether the center is located outside the cell bounds. Use
the CDO option -v to output the position of these cells. This
information can be useful to avoid problems when interpolating the data.

## Usage

``` r
cdo_verifygrid(ifile)
```

## Arguments

- ifile:

  String with the path to the input file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
