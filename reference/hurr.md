# Hurricane days index per time period

Let infile be a time series of the daily maximum horizontal wind speed
VX, then the number of days where VX is greater than or equal to 32.5
m/s is counted. A further output variable is the maximum number of
consecutive days with maximum wind speed greater than or equal to 32.5
m/s. Note that VX is defined as the square root of the sum of squares of
the zonal and meridional wind speeds and have to be given in units of
m/s. The date information of a timestep in outfile is the date of the
last contributing timestep in infile.

## Usage

``` r
cdo_hurr(ifile, ofile = NULL)
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

Operators that don't return filenames return a character vector with the
string output.
