# Year interpolation

This operator performs linear interpolation between two years, timestep
by timestep. The input files need to have the same structure with the
same variables. The output files will be named
\<obase\>\<yyyy\>\<suffix\> where yyyy will be the year and suffix is
the filename extension derived from the file format.

## Usage

``` r
cdo_intyear(ifile1, ifile2, years = NULL, obase = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- years:

  INTEGER - Comma-separated list or first/last\[/inc\] range of years

- obase:

  String with the basename of the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Note

This operator needs to open all output files simultaneously. The maximum
number of open files depends on the operating system!
