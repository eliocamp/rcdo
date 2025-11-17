# Show variables, levels or times

This module prints the format, variables, levels or times of the input
dataset.

## Usage

``` r
cdo_showcode(ifile)

cdo_showdate(ifile)

cdo_showfilter(ifile)

cdo_showformat(ifile)

cdo_showlevel(ifile)

cdo_showltype(ifile)

cdo_showmon(ifile)

cdo_showname(ifile)

cdo_showstdname(ifile)

cdo_showtime(ifile)

cdo_showtimestamp(ifile)

cdo_showyear(ifile)
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

    showformat     Show file format
                   Prints the file format of the input dataset.
    showcode       Show code numbers
                   Prints the code number of all variables.
    showname       Show variable names
                   Prints the name of all variables.
    showstdname    Show standard names
                   Prints the standard name of all variables.
    showlevel      Show levels
                   Prints all levels for each variable.
    showltype      Show GRIB level types
                   Prints the GRIB level type for all z-axes.
    showyear       Show years
                   Prints all years.
    showmon        Show months
                   Prints all months.
    showdate       Show date information
                   Prints date information of all timesteps (format YYYY-MM-DD).
    showtime       Show time information
                   Prints time information of all timesteps (format hh:mm:ss).
    showtimestamp  Show timestamp
                   Prints timestamp of all timesteps (format YYYY-MM-DDThh:mm:ss).
    showfilter     Show filter specification
                   Prints NetCDF4 filter specification of all variables.
