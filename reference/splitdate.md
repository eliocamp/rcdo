# Splits a file into dates

This operator splits infile into pieces, one for each different date.
The output files will be named \<obase\>\<YYYY-MM-DD\>\<suffix\> where
YYYY-MM-DD is the date and suffix is the filename extension derived from
the file format.

## Usage

``` r
cdo_splitdate(ifile, obase = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- obase:

  String with the basename of the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
