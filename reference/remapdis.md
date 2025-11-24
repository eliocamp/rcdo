# Distance weighted average remapping

This module contains operators for an inverse distance weighted average
remapping of the four nearest neighbor values of fields between grids in
spherical coordinates. The default number of 4 neighbors can be changed
with the neighbors parameter.

## Usage

``` r
cdo_gendis(ifile, grid = NULL, neighbors = NULL, map3d = NULL, ofile = NULL)

cdo_remapdis(ifile, grid = NULL, neighbors = NULL, map3d = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- grid:

  STRING - Target grid description file or name

- neighbors:

  INTEGER - Number of nearest neighbors \[default: 4\]

- map3d:

  BOOL - Generate all mapfiles of the first 3D field

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

    remapdis  Distance weighted average remapping
              Performs an inverse distance weighted averaged remapping of the nearest neighbor values on all input fields.
    gendis    Generate distance weighted average remap weights
              Generates distance weighted averaged remapping weights of the nearest neighbor values for the first input
              field and writes the result to a file. The format of this file is NetCDF following the SCRIP convention.
              Use the operator remap to apply this remapping weights to a data file with the same source grid.
              Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
              In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
