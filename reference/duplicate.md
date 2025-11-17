# Duplicates a dataset

This operator duplicates the contents of infile and writes the result to
outfile. The optional parameter sets the number of duplicates, the
default is 2.

## Usage

``` r
cdo_duplicate(ifile, ndup = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- ndup:

  INTEGER - Number of duplicates, default is 2.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
