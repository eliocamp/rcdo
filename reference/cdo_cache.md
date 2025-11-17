# Manages the cache

Manages whether cdo will try to recover existing files if available.

## Usage

``` r
cdo_cache_set(cache = tempdir())

cdo_cache_get()

cdo_cache_unset()
```

## Arguments

- cache:

  either the location of the default cache or a list which is the result
  of a previous `cdo_cache_set()` call.

## Value

A list with the old values of the `rcdo_cache` and `rcdo_tmpdir`
options.

## Details

When first executing the operation,
[`cdo_execute()`](https://eliocamp.github.io/rcdo/reference/cdo_execute.md)
will create a ".hash" file matching the output file name with a hash
generated from the current cdo version, the text of the command, the sum
of the file sizes of the input files and the most recent modified time
of the input files. The next time the same command is executed, if the
cache is active, `cdo_execute` will compute the same hash and compare it
with the file and, if it matches, it will return the output file without
running the command. Caching currently only works with operations with
only one output file.

These functions change the global options. If used inside functions,
it's generally a good idea to reset the original values before exiting
the function with [`on.exit()`](https://rdrr.io/r/base/on.exit.html).

## Examples

``` r
# Set the cache
old <- cdo_cache_set(cache = "data/cache")

# Reset the cache to its previous state
cdo_cache_set(old)

# Disable the cache
old <- cdo_cache_unset()

# Again, reset the cache to its previous state.
cdo_cache_set(old)

with_cache <- function(operation, cache) {
  old <- cdo_cache_set(cache)
  on.exit(cdo_cache_set(old))

  # Rest of the function
}

without_cache <- function(operation) {
  old <- cdo_cache_unset(cache)
  on.exit(cdo_cache_set(old))

  # Rest of the function
}
```
