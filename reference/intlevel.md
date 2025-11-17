# Linear level interpolation

This operator performs a linear vertical interpolation of 3D variables.
The 1D target levels can be specified with the level parameter or read
in via a Z-axis description file.

## Usage

``` r
cdo_intlevel(
  ifile,
  level = NULL,
  zdescription = NULL,
  zvarname = NULL,
  extrapolate = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- level:

  FLOAT - Comma-separated list of target levels

- zdescription:

  STRING - Path to a file containing a description of the Z-axis

- zvarname:

  STRING - Use zvarname as the vertical 3D source coordinate instead of
  the 1D coordinate variable

- extrapolate:

  BOOL - Fill target layers out of the source layer range with the
  nearest source layer

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
