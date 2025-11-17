# ECHAM standard post processor

The "afterburner" is the standard post processor for ECHAM GRIB and
NetCDF data which provides the following operations: - Extract specified
variables and levels - Compute derived variables - Transform spectral
data to Gaussian grid representation - Vertical interpolation to
pressure levels - Compute temporal means This operator reads selection
parameters as namelist from stdin. Use the UNIX redirection
"\<namelistfile" to read the namelist from file. The input files can't
be combined with other CDO operators because of an optimized reader for
this operator.

## Usage

``` r
cdo_after(ifiles, vct = NULL, ofile = NULL)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

- vct:

  STRING - File with VCT in ASCII format

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
