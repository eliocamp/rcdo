# Manage CDO options

Set the options of operations.

## Usage

``` r
cdo_options_use(operation, options)

cdo_options_set(options)

cdo_options_get(options)

cdo_options_clear()
```

## Arguments

- operation:

  operation to add options to.

- options:

  character vector with CDO options.

## Details

`cdo_options_use()` takes an operation and adds a set of options to be
used in that operation. `cdo_options_set()` sets the default options
that all operations should use by default. You can retrieve the default
options with `cdo_options_get()` or clear all default options with
`cdo_options_clear()` or `cdo_options_set(NULL)`.
