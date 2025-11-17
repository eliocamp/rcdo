# Execute a custom operator

Execute a custom operator

## Usage

``` r
cdo(operator, input, params = NULL, output = NULL)

cdo_operator(command, params, n_input, n_output)
```

## Arguments

- operator, :

  a list created with `cdo_operator`.

- input:

  a list with the input files.

- params:

  a character vector with the name of the parameter

- output:

  a vector of file name(s).

- command:

  a string with the command used to run the operator

- n_input, n_output:

  an integer with the number of input and output files required by the
  operator

## Value

a cdo operation.

A list with elements command, params, n_input and n_output.
