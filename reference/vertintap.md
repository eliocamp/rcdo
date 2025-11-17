# Vertical pressure interpolation

Interpolate 3D variables on hybrid sigma height coordinates to pressure
levels. The input file must contain the 3D air pressure in pascal. The
air pressure is identified by the NetCDF CF standard name air_pressure.
Use the alias ap2plx or the environment variable EXTRAPOLATE to
extrapolate missing values. This operator requires all variables on the
same horizontal grid.

## Usage

``` r
cdo_ap2pl(ifile, plevels = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- plevels:

  FLOAT - Comma-separated list of pressure levels in pascal

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Note

This is a specific implementation for NetCDF files from the ICON model,
it may not work with data from other sources.
