# Conditional select one field

This module selects field elements from infile2 with respect to infile1
and writes them to outfile. The fields in infile1 are handled as a mask.
A value not equal to zero is treated as "true zero is treated as
"false". The number of fields in infile1 has either to be the same as in
infile2 or the same as in one timestep of infile2 or only one. The
fields in outfile inherit the meta data from infile2.

## Usage

``` r
cdo_ifnotthen(ifile1, ifile2, ofile = NULL)

cdo_ifthen(ifile1, ifile2, ofile = NULL)
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

## Details

    ifthen     If then
                        / i_2(t,x) if i_1(t,x) NE 0  AND  i_1(t,x) NE miss
               o(t,x) =
                        \\ miss     if i_1(t,x) EQ 0  OR   i_1(t,x) EQ miss
    ifnotthen  If not then
                        / i_2(t,x) if i_1(t,x) EQ 0  AND  i_1(t,x) NE miss
               o(t,x) =
                        \\ miss     if i_1(t,x) NE 0  OR   i_1(t,x) EQ miss
