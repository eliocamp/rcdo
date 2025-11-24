# Collect horizontal grid

This operator collects the data of the input files to one output file.
All input files need to have the same variables and the same number of
timesteps on a different horizonal grid region. If the source regions
are on a structured lon/lat grid, all regions together must result in a
new structured lat/long grid box. Data on an unstructured grid is
concatenated in the order of the input files. The parameter nx needs to
be specified only for curvilinear grids.

## Usage

``` r
cdo_collgrid(ifiles, nx = NULL, names = NULL, ofile = NULL)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

- nx:

  INTEGER - Number of regions in x direction \[default: number of input
  files\]

- names:

  STRING - Comma-separated list of variable names \[default: all
  variables\]

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Note

This operator needs to open all input files simultaneously. The maximum
number of open files depends on the operating system!
