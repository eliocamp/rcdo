# Set parameter table

This module transforms data and metadata of infile via a parameter table
and writes the result to outfile. A parameter table is an ASCII
formatted file with a set of parameter entries for each variable. Each
new set have to start with "&parameter" and to end with "/". The
following parameter table entries are supported: Entry & Type &
Description name & WORD & Name of the variable out_name & WORD & New
name of the variable param & WORD & Parameter identifier (GRIB1:
code\[.tabnum\]; GRIB2: num\[.cat\[.dis\]\]) out_param & WORD & New
parameter identifier type & WORD & Data type (real or double)
standard_name & WORD & As defined in the CF standard name table
long_name & STRING & Describing the variable units & STRING & Specifying
the units for the variable comment & STRING & Information concerning the
variable cell_methods & STRING & Information concerning calculation of
means or climatologies cell_measures & STRING & Indicates the names of
the variables containing cell areas and volumes filterspec & STRING &
NetCDF4 filter specification missing_value & FLOAT & Specifying how
missing data will be identified valid_min & FLOAT & Minimum valid value
valid_max & FLOAT & Maximum valid value ok_min_mean_abs & FLOAT &
Minimum absolute mean ok_max_mean_abs & FLOAT & Maximum absolute mean
factor & FLOAT & Scale factor delete & INTEGER & Set to 1 to delete
variable convert & INTEGER & Set to 1 to convert the unit if necessary
Unsupported parameter table entries are stored as variable attributes.
The search key for the variable depends on the operator. Use setpartabn
to search variables by the name. This is typically used for NetCDF
datasets. The operator setpartabp searches variables by the parameter
ID.

## Usage

``` r
cdo_setpartabn(ifile, table = NULL, convert = NULL, ofile = NULL)

cdo_setpartabp(ifile, table = NULL, convert = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- table:

  STRING - Parameter table file or name

- convert:

  STRING - Converts the units if necessary

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

    setpartabp  Set parameter table
                Search variables by the parameter identifier.
    setpartabn  Set parameter table
                Search variables by name.
