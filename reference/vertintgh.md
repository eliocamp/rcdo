# Vertical height interpolation

Interpolate 3D variables on hybrid sigma height coordinates to height
levels. The input file must contain the 3D geometric height in meter.
The geometric height is identified by the NetCDF CF standard name
geometric_height_at_full_level_center. Use the alias gh2hlx or the
environment variable EXTRAPOLATE to extrapolate missing values. This
operator requires all variables on the same horizontal grid.

## Usage

``` r
cdo_gh2hl(ifile, hlevels = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- hlevels:

  FLOAT - Comma-separated list of height levels in meter

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
