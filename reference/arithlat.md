# Arithmetic with latitude

This module multiplies or divides each field element with the cosine of
the latitude.

## Usage

``` r
cdo_divcoslat(ifile, ofile = NULL)

cdo_mulcoslat(ifile, ofile = NULL)
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

## Details

    mulcoslat  Multiply with the cosine of the latitude
               o(t,x) = i(t,x) * cos(latitude(x))
    divcoslat  Divide by cosine of the latitude
               o(t,x) = i(t,x) / cos(latitude(x))
