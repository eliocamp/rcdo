# Comparison of a field with a constant

This module compares all fields of a dataset with a constant. The
resulting field is a mask containing 1 if the comparison is true and 0
if not. The type of comparison depends on the chosen operator.

## Usage

``` r
cdo_eqc(ifile, c = NULL, ofile = NULL)

cdo_gec(ifile, c = NULL, ofile = NULL)

cdo_gtc(ifile, c = NULL, ofile = NULL)

cdo_lec(ifile, c = NULL, ofile = NULL)

cdo_ltc(ifile, c = NULL, ofile = NULL)

cdo_nec(ifile, c = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- c:

  FLOAT - Constant

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

    eqc  Equal constant
                   /   1   if i(t,x) EQ c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) NE c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
    nec  Not equal constant
                   /   1   if i(t,x) NE c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) EQ c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
    lec  Less equal constant
                   /   1   if i(t,x) LE c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) GT c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
    ltc  Less than constant
                   /   1   if i(t,x) LT c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) GE c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
    gec  Greater equal constant
                   /   1   if i(t,x) GE c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) LT c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
    gtc  Greater than constant
                   /   1   if i(t,x) GT c     AND  i(t,x),c NE miss
         o(t,x) = &lt;    0   if i(t,x) LE c     AND  i(t,x),c NE miss
                   \\  miss if i(t,x) EQ miss  OR   c EQ miss
