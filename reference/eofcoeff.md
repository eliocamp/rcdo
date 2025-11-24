# Principal coefficients of EOFs

This module calculates the time series of the principal coefficients for
given EOF (empirical orthogonal functions) and data. Time steps in
infile1 are assumed to be the EOFs, time steps in infile2 are assumed to
be the time series. Note, that this operator calculates a non weighted
dot product of the fields in infile1 and infile2. For consistency set
the environment variable CDO_WEIGHT_MODE=off when using eof or eof3d.
There will be a separate file containing a time series of principal
coefficients with time information from infile2 for each EOF in infile1.
Output files will be numbered as \<obase\>\<neof\>\<suffix\> where
neof+1 is the number of the EOF (timestep) in infile1 and suffix is the
filename extension derived from the file format.

## Usage

``` r
cdo_eofcoeff(ifile1, ifile2, obase = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- obase:

  String with the basename of the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
