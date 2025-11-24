# Wind transformation

This module contains CDO operators with an interface to NCL functions.
The corresponding NCL functions have the same name. A more detailed
description of those NCL function can be found on the NCL homepage
https://www.ncl.ucar.edu.

## Usage

``` r
cdo_uv2dv_cfd(
  ifile,
  u = NULL,
  v = NULL,
  boundOpt = NULL,
  outMode = NULL,
  ofile = NULL
)

cdo_uv2vr_cfd(
  ifile,
  u = NULL,
  v = NULL,
  boundOpt = NULL,
  outMode = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- u:

  STRING - Name of variable u (default: u)

- v:

  STRING - Name of variable v (default: v)

- boundOpt:

  INTEGER - Boundary condition option (0-3) (default: 0/1 for cyclic
  grids)

- outMode:

  STRING - Output mode new/append (default: new)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    uv2vr_cfd  U and V wind to relative vorticity
               Computes relative vorticity for a latitude-longitude grid using centered finite differences.
               The grid need not be global and missing values are allowed.
    uv2dv_cfd  U and V wind to divergence
               Computes divergence for a latitude-longitude grid using centered finite differences.
               The grid need not be global and missing values are allowed.
