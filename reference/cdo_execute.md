# Execute a CDO operation

Execute a CDO operation

## Usage

``` r
cdo_execute(
  operation,
  output = temp_output(operation, !cache),
  options = NULL,
  options_replace = FALSE,
  verbose = FALSE,
  cache = getOption("rcdo_cache", default = FALSE)
)

cdo_execute_list(
  operations,
  output = NULL,
  options = NULL,
  options_replace = FALSE,
  verbose = FALSE,
  cache = FALSE
)
```

## Arguments

- operation:

  a CDO operation

- output:

  an output file or base string for output files. Defaults to temporary
  files that will be deleted when its bond variable is garbage
  collected.

- options:

  character vector with CDO options.

- options_replace:

  logical indicating whether the options given in execute should replace
  any other options (global or set with `cdo_options_use`).

- verbose:

  whether to print the command being executed.

- cache:

  whether to cache results. See
  [`cdo_cache_set()`](https://eliocamp.github.io/rcdo/reference/cdo_cache.md)
  for details.

- operations:

  a list of CDO operations
