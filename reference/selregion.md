# Select horizontal regions

Selects all grid cells with the center point inside user defined regions
or a circle. The resulting grid is unstructured.

## Usage

``` r
cdo_selcircle(
  ifile,
  regions = NULL,
  lon = NULL,
  lat = NULL,
  radius = NULL,
  ofile = NULL
)

cdo_selregion(
  ifile,
  regions = NULL,
  lon = NULL,
  lat = NULL,
  radius = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- regions:

  STRING - Comma-separated list of ASCII formatted files with different
  regions

- lon:

  FLOAT - Longitude of the center of the circle in degrees, default
  lon=0.0

- lat:

  FLOAT - Latitude of the center of the circle in degrees, default
  lat=0.0

- radius:

  STRING - Radius of the circle, default radius=1deg (units: deg, rad,
  km, m)

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

    selregion  Select cells inside regions
               Selects all grid cells with the center point inside the regions.
               Regions can be defined by the user via an ASCII file.
               Each region consists of the geographic coordinates of a polygon.
               Each line of a polygon description file contains the longitude and latitude of one point.
               Each polygon description file can contain one or more polygons separated by a line with the character \\&amp;.

               Predefined regions of countries can be specified via the country codes.
               A country is specified with dcw:&lt;CountryCode&gt;. Country codes can be combined with the plus sign.
    selcircle  Select cells inside a circle
               Selects all grid cells with the center point inside a circle. The circle is described by geographic coordinates
               of the center and the radius of the circle.
