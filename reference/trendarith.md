# Add or subtract a trend

This module is for adding or subtracting a trend computed by the
operator trend.

## Usage

``` r
cdo_addtrend(ifile1, ifile2, ifile3, equal = NULL, ofile = NULL)

cdo_subtrend(ifile1, ifile2, ifile3, equal = NULL, ofile = NULL)
```

## Arguments

- ifile1, ifile2, ifile3:

  Strings with the path to the input files.

- equal:

  BOOL - Set to false for unequal distributed timesteps (default: true)

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

    addtrend  Add trend
              It is

              o(t,x) = i_1(t,x) + (i_2(1,x) + i_3(1,x)*t)
              where t is the timesteps.
    subtrend  Subtract trend
              It is

              o(t,x) = i_1(t,x) - (i_2(1,x) + i_3(1,x)*t)
              where t is the timesteps.
