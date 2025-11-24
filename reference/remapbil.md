# Bilinear interpolation

This module contains operators for a bilinear remapping of fields
between grids in spherical coordinates. The interpolation is based on an
adapted SCRIP library version. For a detailed description of the
interpolation method see SCRIP. This interpolation method only works on
quadrilateral curvilinear source grids.

## Usage

``` r
cdo_genbil(ifile, grid = NULL, map3d = NULL, ofile = NULL)

cdo_remapbil(ifile, grid = NULL, map3d = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- grid:

  STRING - Target grid description file or name

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

    remapbil  Bilinear interpolation
              Performs a bilinear interpolation on all input fields.
    genbil    Generate bilinear interpolation weights
              Generates bilinear interpolation weights for the first input field and writes the
              result to a file. The format of this file is NetCDF following the SCRIP convention.
              Use the operator remap to apply this remapping weights to a data file with the same source grid.
              Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
              In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
