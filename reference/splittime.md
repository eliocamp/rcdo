# Split timesteps of a dataset

This module splits infile into timesteps pieces. The output files will
be named \<obase\>\<xxx\>\<suffix\> where suffix is the filename
extension derived from the file format. xxx and the contents of the
output files depends on the chosen operator.

## Usage

``` r
cdo_splitday(ifile, format = NULL, obase = NULL)

cdo_splithour(ifile, format = NULL, obase = NULL)

cdo_splitmon(ifile, format = NULL, obase = NULL)

cdo_splitseas(ifile, format = NULL, obase = NULL)

cdo_splityear(ifile, format = NULL, obase = NULL)

cdo_splityearmon(ifile, format = NULL, obase = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- format:

  STRING - C-style format for strftime() (e.g. %B for the full month
  name)

- obase:

  String with the basename of the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    splithour     Split hours
                  Splits a file into pieces, one for each different hour.
                  xxx will have two digits with the hour.
    splitday      Split days
                  Splits a file into pieces, one for each different day.
                  xxx will have two digits with the day.
    splitseas     Split seasons
                  Splits a file into pieces, one for each different season.
                  xxx will have three characters with the season.
    splityear     Split years
                  Splits a file into pieces, one for each different year.
                  xxx will have four digits with the year (YYYY).
    splityearmon  Split in years and months
                  Splits a file into pieces, one for each different year and month.
                  xxx will have six digits with the year and month (YYYYMM).
    splitmon      Split months
                  Splits a file into pieces, one for each different month.
                  xxx will have two digits with the month.

## Note

Operators of this module need to open all output files simultaneously.
The maximum number of open files depends on the operating system!
