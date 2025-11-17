# Reduce fields to userdefined mask

This module holds an operator for data reduction based on a user defined
mask. The output grid is unstructured and includes coordinate bounds.
Bounds can be avoided by using the additional 'nobounds' keyword. With
'nocoords' given, coordinates a completely suppressed.

## Usage

``` r
cdo_reducegrid(ifile, mask = NULL, limitCoordsOutput = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- mask:

  STRING - file which holds the mask field

- limitCoordsOutput:

  STRING - optional parameter to limit coordinates output: 'nobounds'
  disables coordinate bounds, 'nocoords' avoids all coordinate
  information

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
