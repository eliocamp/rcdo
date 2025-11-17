# Import binary data sets

This operator imports gridded binary data sets via a GrADS data
descriptor file. The GrADS data descriptor file contains a complete
description of the binary data as well as instructions on where to find
the data and how to read it. The descriptor file is an ASCII file that
can be created easily with a text editor. The general contents of a
gridded data descriptor file are as follows: - Filename for the binary
data - Missing or undefined data value - Mapping between grid
coordinates and world coordinates - Description of variables in the
binary data set A detailed description of the components of a GrADS data
descriptor file can be found in GrADS. Here is a list of the supported
components: BYTESWAPPED, CHSUB, DSET, ENDVARS, FILEHEADER, HEADERBYTES,
OPTIONS, TDEF, TITLE, TRAILERBYTES, UNDEF, VARS, XDEF, XYHEADER, YDEF,
ZDEF

## Usage

``` r
cdo_import_binary(ifile, ofile = NULL)
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

## Note

Only 32-bit IEEE floats are supported for standard binary files!
