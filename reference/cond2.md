# Conditional select two fields

This operator selects field elements from infile2 or infile3 with
respect to infile1 and writes them to outfile. The fields in infile1 are
handled as a mask. A value not equal to zero is treated as "true zero is
treated as "false". The number of fields in infile1 has either to be the
same as in infile2 or the same as in one timestep of infile2 or only
one. infile2 and infile3 need to have the same number of fields. The
fields in outfile inherit the meta data from infile2. / i_2(t,x) if
i_1(t,x) NE 0 AND i_1(t,x) NE miss o(t,x) = \< i_3(t,x) if i_1(t,x) EQ 0
AND i_1\[t,x) NE miss miss if i_1(t,x) EQ miss

## Usage

``` r
cdo_ifthenelse(ifile1, ifile2, ifile3, ofile = NULL)
```

## Arguments

- ifile1, ifile2, ifile3:

  Strings with the path to the input files.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
