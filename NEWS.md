# rcdo (development version)

## New Features

-   Added options management. `cdo_options_use()` will use options for an operation. `cdo_option_set()` will set global options to use for all operations. `cdo_options_clear()` will clear the global options.
-   The new `cdo_operator()` allows the user to define an arbitrary operator in case the some operator is missing in the package. Operators are run with the `cdo()` function.
-   Added operators with zero outputs.

