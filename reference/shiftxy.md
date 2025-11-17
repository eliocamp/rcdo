# Shift field

This module contains operators to shift all fields in x or y direction.
All fields need to have the same horizontal rectilinear or curvilinear
grid.

## Usage

``` r
cdo_shiftx(ifile, nshift = NULL, cyclic = NULL, coord = NULL, ofile = NULL)

cdo_shifty(ifile, nshift = NULL, cyclic = NULL, coord = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- nshift:

  INTEGER - Number of grid cells to shift (default: 1)

- cyclic:

  STRING - If set, cells are filled up cyclic (default: missing value)

- coord:

  STRING - If set, coordinates are also shifted

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

    shiftx  Shift x
            Shifts all fields in x direction.
    shifty  Shift y
            Shifts all fields in y direction.
