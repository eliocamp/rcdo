# Dataset description

This module provides operators to print meta information about a
dataset. The printed meta-data depends on the chosen operator.

## Usage

``` r
cdo_codetab(ifile)

cdo_griddes(ifile)

cdo_partab(ifile)

cdo_vct(ifile)

cdo_zaxisdes(ifile)
```

## Arguments

- ifile:

  String with the path to the input file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    partab    Parameter table
              Prints all available meta information of the variables.
    codetab   Parameter code table
              Prints a code table with a description of all variables.
              For each variable the operator prints one line listing the
              code, name, description and units.
    griddes   Grid description
              Prints the description of all grids.
    zaxisdes  Z-axis description
              Prints the description of all z-axes.
    vct       Vertical coordinate table
              Prints the vertical coordinate table.
