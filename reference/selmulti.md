# Select multiple fields via GRIB1 parameters

This module selects multiple fields from infile and writes them to
outfile. selection-specification is a filename or in-place string with
the selection specification. Each selection-specification has the
following compact notation format: \<type\>(parameters; leveltype(s);
levels) type " " sel for select or del for delete (optional) parameters"
" GRIB1 parameter code number leveltype " " GRIB1 level type levels " "
value of each level Examples: (1; 103; 0) (33,34; 105; 10) (11,17; 105;
2) (71,73,74,75,61,62,65,117,67,122,121,11,131,66,84,111,112; 105; 0)
The following descriptive notation can also be used for selection
specification from a file: SELECT/DELETE, PARAMETER=parameters,
LEVTYPE=leveltye(s), LEVEL=levels Examples: SELECT, PARAMETER=1,
LEVTYPE=103, LEVEL=0 SELECT, PARAMETER=33/34, LEVTYPE=105, LEVEL=10
SELECT, PARAMETER=11/17, LEVTYPE=105, LEVEL=2 SELECT,
PARAMETER=71/73/74/75/61/62/65/117/67/122, LEVTYPE=105, LEVEL=0 DELETE,
PARAMETER=128, LEVTYPE=109, LEVEL=\* The following will convert Pressure
from Pa into hPa; Temp from Kelvin to Celsius: SELECT, PARAMETER=1,
LEVTYPE= 103, LEVEL=0, SCALE=0.01 SELECT, PARAMETER=11, LEVTYPE=105,
LEVEL=2, OFFSET=273.15 If SCALE and/or OFFSET are defined, then the data
values are scaled as SCALE\*(VALUE-OFFSET).

## Usage

``` r
cdo_changemulti(ifile, ofile = NULL)

cdo_delmulti(ifile, ofile = NULL)

cdo_selmulti(ifile, ofile = NULL)
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

Operators that don't return filenames return a character vector with the
string output.

## Details

    selmulti     Select multiple fields
    delmulti     Delete multiple fields
    changemulti  Change identication of multiple fields
