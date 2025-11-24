# Mask regions

Masks different regions of the input fields. The grid cells inside a
region are untouched, the cells outside are set to missing value.
Considered are only those grid cells with the grid center inside the
regions. All input fields must have the same horizontal grid. Regions
can be defined by the user via an ASCII file. Each region consists of
the geographic coordinates of a polygon. Each line of a polygon
description file contains the longitude and latitude of one point. Each
polygon description file can contain one or more polygons separated by a
line with the character &. Predefined regions of countries can be
specified via the country codes. A country is specified with
dcw:\<CountryCode\>. Country codes can be combined with the plus sign.

## Usage

``` r
cdo_maskregion(ifile, regions = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- regions:

  STRING - Comma-separated list of ASCII formatted files with different
  regions

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
