# Spectral conversion

Changed the triangular truncation of all spectral fields. This operator
performs downward conversion by cutting the resolution. Upward
conversions are achieved by filling in zeros.

## Usage

``` r
cdo_sp2sp(ifile, trunc = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- trunc:

  INTEGER - New spectral resolution

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
