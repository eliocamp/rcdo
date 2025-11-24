# Extra short information

This module writes information about the structure of infiles to
standard output. infiles is an arbitrary number of input files. All
input files need to have the same structure with the same variables on
different timesteps. The information displayed depends on the chosen
operator.

## Usage

``` r
cdo_xsinfo(ifiles)

cdo_xsinfop(ifiles)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    xsinfo   Extra short information listed by parameter name
             Prints short information of a dataset. The information is divided into 4 sections.
             Section 1 prints one line per parameter with the following information:
             - institute and source
             - time c=constant v=varying
             - type of statistical processing
             - number of levels and z-axis number
             - horizontal grid size and number
             - data type
             - memory type (float or double)
             - parameter name
             Section 2 to 4 gives a short overview of all grid, vertical and time coordinates.
    xsinfop  Extra short information listed by parameter identifier
             The same as operator xsinfo but using the identifier instead of the name to label the parameter.
