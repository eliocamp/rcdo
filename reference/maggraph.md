# Line graph plot

This operator generates line graph plots. The data for the plot is read
from infiles. The result is written to outfile. The default output file
format is postscript, this can be changed with the device parameter.
Here is a list of all graph plot parameters: Keyname & Type &
Description device & STRING & Output device (ps, eps, pdf, png, gif,
gif_animation, jpeg, svg, kml) ymin & FLOAT & Minimum value of the
y-axis data ymax & FLOAT & Maximum value of the y-axis data linewidth &
INT & Linewidth (default 8) stat & STRING & "TRUE" or "FALSE to switch
on the mean computation. Default is "FALSE". & & Will be overridden to
"FALSE if input files have unequal number of time & & steps or different
start/end times. sigma & FLOAT & Standard deviation value for generating
shaded back ground around the mean value. & & To be used in conjunction
with 'stat="TRUE"' obsv & STRING & To indicate if the input files have
an observation data, by setting to "TRUE". & & Default value is "FALSE".
The observation data should be the first file in the & & input file
list. The observation data is always plotted in black colour.

## Usage

``` r
cdo_graph(ifiles, parameter = NULL, ofile = NULL)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

- parameter:

  STRING - Comma-separated list of plot parameters

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
