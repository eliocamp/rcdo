# Covariance in grid space

This operator calculates the covariance of two fields over all
gridpoints for each timestep. With S(t) = {x, i_1(t,x) != missval and
i_2(t,x) != missval} it is o(t,1) = Covar{(i_1(t,x), i_2(t,x)), x_1 \< x
\<= x_n} where w(x) are the area weights obtained by the input streams.
For every timestep t only those field elements x belong to the sample,
which have i_1(t,x) != missval and i_2(t,x) != missval.

## Usage

``` r
cdo_fldcovar(ifile1, ifile2, ofile = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
