# D and V to velocity potential and stream function

Calculate spherical harmonic coefficients of velocity potential and
stream function from spherical harmonic coefficients of relative
divergence and vorticity. The divergence and vorticity need to have the
names sd and svo or code numbers 155 and 138.

## Usage

``` r
cdo_dv2ps(ifile, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
