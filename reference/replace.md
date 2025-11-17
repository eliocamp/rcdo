# Replace variables

This operator replaces variables in infile1 by variables from infile2
and write the result to outfile. Both input datasets need to have the
same number of timesteps. All variable names may only occur once!

## Usage

``` r
cdo_replace(ifile1, ifile2, ofile = NULL)
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
