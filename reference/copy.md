# Copy datasets

This module contains operators to copy, clone or concatenate datasets.
infiles is an arbitrary number of input files. All input files need to
have the same structure with the same variables on different timesteps.

## Usage

``` r
cdo_cat(ifiles, ofile = NULL)

cdo_clone(ifiles, ofile = NULL)

cdo_copy(ifiles, ofile = NULL)
```

## Arguments

- ifiles:

  Character vector with the path to the input files.

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

    copy   Copy datasets
           Copies all input datasets to outfile.
    clone  Clone datasets
           Copies all input datasets to outfile. In contrast to the copy operator, clone tries
           not to change the input data. GRIB records are neither decoded nor decompressed.
    cat    Concatenate datasets
           Concatenates all input datasets and appends the result to the end
           of outfile. If outfile does not exist it will be created.
