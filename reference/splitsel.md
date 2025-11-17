# Split selected timesteps

This operator splits infile into pieces, one for each adjacent sequence
t_1, ...., t_n of timesteps of the same selected time range. The output
files will be named \<obase\>\<nnnnnn\>\<suffix\> where nnnnnn is the
sequence number and suffix is the filename extension derived from the
file format.

## Usage

``` r
cdo_splitsel(ifile, nsets = NULL, noffset = NULL, nskip = NULL, obase = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- nsets:

  INTEGER - Number of input timesteps for each output file

- noffset:

  INTEGER - Number of input timesteps skipped before the first timestep
  range (optional)

- nskip:

  INTEGER - Number of input timesteps skipped between timestep ranges
  (optional)

- obase:

  String with the basename of the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
