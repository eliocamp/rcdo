# Calculates potential density

This is a special operator for the post processing of the ocean and sea
ice model MPIOM. It calculates the sea water potential density
(name=rhopoto; code=18). Required input fields are sea water in-situ
temperature (name=to; code=20) and sea water salinity (name=sao;
code=5). Pressure is calculated from the level information or can be
specified by the optional parameter.

## Usage

``` r
cdo_rhopot(ifile, pressure = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- pressure:

  FLOAT - Pressure in bar (constant value assigned to all levels)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
