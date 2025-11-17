# Windchill temperature

Let infile1 and infile2 be time series of temperature and wind speed
fields, then a corresponding time series of resulting windchill
temperatures is written to outfile. The wind chill temperature
calculation is only valid for a temperature of T \<= 33 °C and a wind
speed of v \>= 1.39 m/s. Whenever these conditions are not satisfied, a
missing value is written to outfile. Note that temperature and wind
speed fields have to be given in units of °C and m/s, respectively.

## Usage

``` r
cdo_wct(ifile1, ifile2, ofile = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
