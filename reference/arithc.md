# Arithmetic with a constant

This module performs simple arithmetic with all field elements of a
dataset and a constant. The fields in outfile inherit the meta data from
infile.

## Usage

``` r
cdo_addc(ifile, c = NULL, ofile = NULL)

cdo_divc(ifile, c = NULL, ofile = NULL)

cdo_maxc(ifile, c = NULL, ofile = NULL)

cdo_minc(ifile, c = NULL, ofile = NULL)

cdo_mulc(ifile, c = NULL, ofile = NULL)

cdo_subc(ifile, c = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- c:

  FLOAT - Constant

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

    addc  Add a constant
          o(t,x) = i(t,x) + c
    subc  Subtract a constant
          o(t,x) = i(t,x) - c
    mulc  Multiply with a constant
          o(t,x) = i(t,x) * c
    divc  Divide by a constant
          o(t,x) = i(t,x) / c
    minc  Minimum of a field and a constant
          o(t,x) = min(i(t,x), c)
    maxc  Maximum of a field and a constant
          o(t,x) = max(i(t,x), c)
