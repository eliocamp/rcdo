# Select grid cells

The operator selects grid cells of all fields from infile. The user must
specify the index of each grid cell. The resulting grid in outfile is
unstructured.

## Usage

``` r
cdo_delgridcell(ifile, indices = NULL, ofile = NULL)

cdo_selgridcell(ifile, indices = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- indices:

  INTEGER - Comma-separated list or first/last\[/inc\] range of indices

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

    selgridcell  Select grid cells
    delgridcell  Delete grid cells
