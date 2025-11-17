# Mathematical functions

This module contains some standard mathematical functions. All
trigonometric functions calculate with radians.

## Usage

``` r
cdo_abs(ifile, ofile = NULL)

cdo_acos(ifile, ofile = NULL)

cdo_asin(ifile, ofile = NULL)

cdo_atan(ifile, ofile = NULL)

cdo_cos(ifile, ofile = NULL)

cdo_exp(ifile, ofile = NULL)

cdo_int(ifile, ofile = NULL)

cdo_ln(ifile, ofile = NULL)

cdo_log10(ifile, ofile = NULL)

cdo_nint(ifile, ofile = NULL)

cdo_not(ifile, ofile = NULL)

cdo_pow(ifile, ofile = NULL)

cdo_reci(ifile, ofile = NULL)

cdo_sin(ifile, ofile = NULL)

cdo_sqr(ifile, ofile = NULL)

cdo_sqrt(ifile, ofile = NULL)

cdo_tan(ifile, ofile = NULL)
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

Operatos that don't return filenames return a character vector with the
string output.

## Details

    abs    Absolute value
           o(t,x) = abs(i(t,x))
    int    Integer value
           o(t,x) = int(i(t,x))
    nint   Nearest integer value
           o(t,x) = nint(i(t,x))
    pow    Power
           o(t,x) = i(t,x)^y
    sqr    Square
           o(t,x) = i(t,x)^2
    sqrt   Square root
           o(t,x) = sqrt(i(t,x))
    exp    Exponential
           o(t,x) = e^i(t,x)
    ln     Natural logarithm
           o(t,x) = ln(i(t,x))
    log10  Base 10 logarithm
           o(t,x) = log10(i(t,x))
    sin    Sine
           o(t,x) = sin(i(t,x))
    cos    Cosine
           o(t,x) = cos(i(t,x))
    tan    Tangent
           o(t,x) = tan(i(t,x))
    asin   Arc sine
           o(t,x) = asin(i(t,x))
    acos   Arc cosine
           o(t,x) = acos(i(t,x))
    atan   Arc tangent
           o(t,x) = atan(i(t,x))
    reci   Reciprocal value
           o(t,x) = 1 / i(t,x)
    not    Logical NOT
           o(t,x) = 1, if x equal 0; else 0
