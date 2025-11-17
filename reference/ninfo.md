# Print the number of parameters, levels or times

This module prints the number of variables, levels or times of the input
dataset.

## Usage

``` r
cdo_ndate(ifile)

cdo_ngridpoints(ifile)

cdo_ngrids(ifile)

cdo_nlevel(ifile)

cdo_nmon(ifile)

cdo_npar(ifile)

cdo_ntime(ifile)

cdo_nyear(ifile)
```

## Arguments

- ifile:

  String with the path to the input file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Details

    npar         Number of parameters
                 Prints the number of parameters (variables).
    nlevel       Number of levels
                 Prints the number of levels for each variable.
    nyear        Number of years
                 Prints the number of different years.
    nmon         Number of months
                 Prints the number of different combinations of years and months.
    ndate        Number of dates
                 Prints the number of different dates.
    ntime        Number of timesteps
                 Prints the number of timesteps.
    ngridpoints  Number of gridpoints
                 Prints the number of gridpoints for each variable.
    ngrids       Number of horizontal grids
                 Prints the number of horizontal grids.
