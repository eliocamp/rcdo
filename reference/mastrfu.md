# Mass stream function

This is a special operator for the post processing of the atmospheric
general circulation model ECHAM. It computes the mass stream function
(code=272). The input dataset have to be a zonal mean of v-velocity
\[m/s\] (code=132) on pressure levels.

## Usage

``` r
cdo_mastrfu(ifile, ofile = NULL)
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
