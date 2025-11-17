# Set NetCDF4 filter

This operator sets the NetCDF4 filter specification for selected
variables. Filters are mainly used to compress/decompress data. NetCDF4
uses the HDF5 plugins for filter support. To find the HDF5 plugins, the
environment variable HDF5_PLUGIN_PATH must point to the directory with
the installed plugins. The program may terminate unexpectedly if filters
are used whose plugins are not found. A filter specification consists of
the filterId and the filter parameters. CDO supports multiple filters
connected with '\|'. Here is a filter specification for bzip2 (filterId:
307) combined with szip (filterId:4): "307,9\|4,32,32". Use the CDO
option –filter instead of setfilter if all variables require the same
filter. More information about NetCDF4 filters can be found in
https://docs.unidata.ucar.edu/netcdf-c/current/filters.html.

## Usage

``` r
cdo_setfilter(ifile, filename = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- filename:

  STRING - Read filter specification per variable from file \[format:
  varname=\\\<filterspec\>\\\]

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
