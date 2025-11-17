# Linear level interpolation from/to 3D vertical coordinates

This operator performs a linear vertical interpolation of 3D variables
fields with given 3D vertical coordinates. infile1 contains the 3D data
variables and infile2 the 3D vertical source coordinate. The parameter
tgtcoordinate is a datafile with the 3D vertical target coordinate.

## Usage

``` r
cdo_intlevel3d(ifile1, ifile2, tgtcoordinate = NULL, ofile = NULL)

cdo_intlevelx3d(ifile1, ifile2, tgtcoordinate = NULL, ofile = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- tgtcoordinate:

  STRING - filename for 3D vertical target coordinates

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

    intlevel3d   Linear level interpolation onto a 3D vertical coordinate
    intlevelx3d  like intlevel3d but with extrapolation
