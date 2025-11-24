# Table output

This operator prints a table of all input datasets to standard output.
infiles is an arbitrary number of input files. All input files need to
have the same structure with the same variables on different timesteps.
All input fields need to have the same horizontal grid. The contents of
the table depends on the chosen parameters. The format of each table
parameter is keyname\[:len\]. len is the optional length of a table
entry. The number of significant digits of floating point parameters can
be set with the CDO option –precision, the default is 7. Here is a list
of all valid keynames: Keyname & Type & Description value & FLOAT &
Value of the variable \[len:8\] name & STRING & Name of the variable
\[len:8\] param & STRING & Parameter ID (GRIB1: code\[.tabnum\]; GRIB2:
num\[.cat\[.dis\]\]) \[len:11\] code & INTEGER & Code number \[len:4\] x
& FLOAT & X coordinate of the original grid \[len:6\] y & FLOAT & Y
coordinate of the original grid \[len:6\] lon & FLOAT & Longitude
coordinate in degrees \[len:6\] lat & FLOAT & Latitude coordinate in
degrees \[len:6\] lev & FLOAT & Vertical level \[len:6\] xind & INTEGER
& Grid x index \[len:4\] yind & INTEGER & Grid y index \[len:4\]
timestep & INTEGER & Timestep number \[len:6\] date & STRING & Date
(format YYYY-MM-DD) \[len:10\] time & STRING & Time (format hh:mm:ss)
\[len:8\] year & INTEGER & Year \[len:5\] month & INTEGER & Month
\[len:2\] day & INTEGER & Day \[len:2\] nohead & INTEGER & Disable
output of header line

## Usage

``` r
cdo_outputtab(ifiles, parameter = NULL)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

- parameter:

  STRING - Comma-separated list of keynames, one for each column of the
  table

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
