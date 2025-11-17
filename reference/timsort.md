# Timsort

Sorts the elements in ascending order over all timesteps for every field
position. After sorting it is: o(t_1,x) \<= o(t_2,x) forall (t_1\<t_2),x

## Usage

``` r
cdo_timsort(ifile, ofile = NULL)
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
