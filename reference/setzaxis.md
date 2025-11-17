# Set zaxis information

This module modifies the metadata of the vertical grid.

## Usage

``` r
cdo_genlevelbounds(ifile, zaxis = NULL, zbot = NULL, ztop = NULL, ofile = NULL)

cdo_setzaxis(ifile, zaxis = NULL, zbot = NULL, ztop = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- zaxis:

  STRING - Z-axis description file or name of the target z-axis

- zbot:

  FLOAT - Specifying the bottom of the vertical column. Must have the
  same units as z-axis.

- ztop:

  FLOAT - Specifying the top of the vertical column. Must have the same
  units as z-axis.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Details

    setzaxis        Set z-axis
                    This operator sets the z-axis description of all variables with the same number of level as the new z-axis.
    genlevelbounds  Generate level bounds
                    Generates the layer bounds of the z-axis.
