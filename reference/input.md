# Formatted input

This module reads time series of one 2D variable from standard input.
All input fields need to have the same horizontal grid. The format of
the input depends on the chosen operator.

## Usage

``` r
cdo_input(grid = NULL, zaxis = NULL, ofile = NULL)

cdo_inputext(grid = NULL, zaxis = NULL, ofile = NULL)

cdo_inputsrv(grid = NULL, zaxis = NULL, ofile = NULL)
```

## Arguments

- grid:

  STRING - Grid description file or name

- zaxis:

  STRING - Z-axis description file

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

    input     ASCII input
              Reads fields with ASCII numbers from standard input and stores them
              in outfile. The numbers read are exactly that ones which are written
              out by the output operator.
    inputsrv  SERVICE ASCII input
              Reads fields with ASCII numbers from standard input and stores them
              in outfile. Each field should have a header of 8 integers (SERVICE likely).
              The numbers that are read are exactly that ones which are written out by
              the outputsrv operator.
    inputext  EXTRA ASCII input
              Read fields with ASCII numbers from standard input and stores them
              in outfile. Each field should have header of 4 integers (EXTRA likely).
              The numbers read are exactly that ones which are written out by
              the outputext operator.
