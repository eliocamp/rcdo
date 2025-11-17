# Merge grid

Merges grid points of all variables from infile2 to infile1 and write
the result to outfile. Only the non missing values of infile2 will be
used. The horizontal grid of infile2 should be smaller or equal to the
grid of infile1 and the resolution must be the same. Only rectilinear
grids are supported. Both input files need to have the same variables
and the same number of timesteps.

## Usage

``` r
cdo_mergegrid(ifile1, ifile2, ofile = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
