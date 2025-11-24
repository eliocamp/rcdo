# GMT output

This module prints the first field of the input dataset to standard
output. The output can be used to generate 2D Lon/Lat plots with GMT.
The format of the output depends on the chosen operator.

## Usage

``` r
cdo_gmtcells(ifile)

cdo_gmtxyz(ifile)
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

    gmtxyz    GMT xyz format
              The operator exports the first field to the GMT xyz ASCII format.
              The output can be used to create contour plots with the GMT module pscontour.
    gmtcells  GMT multiple segment format
              The operator exports the first field to the GMT multiple segment ASCII format.
              The output can be used to create shaded gridfill plots with the GMT module psxy.
