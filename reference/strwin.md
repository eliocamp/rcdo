# Strong wind days index per time period

Let infile be a time series of the daily maximum horizontal wind speed
VX, then the number of days where VX \> v is counted. The horizontal
wind speed v is an optional parameter with default v = 10.5 m/s. A
further output variable is the maximum number of consecutive days with
maximum wind speed greater than or equal to v. Note that both VX and v
have to be given in units of m/s. Also note that the horizontal wind
speed is defined as the square root of the sum of squares of the zonal
and meridional wind speeds. The date information of a timestep in
outfile is the date of the last contributing timestep in infile.

## Usage

``` r
cdo_strwin(ifile, v = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- v:

  FLOAT - Horizontal wind speed threshold (m/s, default v = 10.5 m/s)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
