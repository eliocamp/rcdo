# Arithmetic with days

This module multiplies or divides each timestep of a dataset with the
corresponding days per month or days per year. The result of these
functions depends on the used calendar of the input data.

## Usage

``` r
cdo_divdpm(ifile, ofile = NULL)

cdo_divdpy(ifile, ofile = NULL)

cdo_muldpm(ifile, ofile = NULL)

cdo_muldpy(ifile, ofile = NULL)
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

## Details

    muldpm  Multiply with days per month
            o(t,x) = i(t,x) * days_per_month
    divdpm  Divide by days per month
            o(t,x) = i(t,x) / days_per_month
    muldpy  Multiply with days per year
            o(t,x) = i(t,x) * days_per_year
    divdpy  Divide by days per year
            o(t,x) = i(t,x) / days_per_year
