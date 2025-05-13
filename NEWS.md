# rcdo 0.2.0

## New Features

-   Improved performance of command building by only checking the cdo version installed when needed and also caching the result per session.

# rcdo 0.1.0

## New Features

-   Added options management. `cdo_options_use()` will use options for an operation. `cdo_option_set()` will set global options to use for all operations. `cdo_options_clear()` will clear the global options.
-   The new `cdo_operator()` allows the user to define an arbitrary operator in case the some operator is missing in the package. Operators are run with the `cdo()` function.
-   Added operators with zero outputs.
-   By default, temporary files output are deleted when not accessible from the R session.
-   Adds change operators.
-   Adds `cdo_execute_list()` to execute a list of cdo operations. This is the preferred way of applying operations to a set of files since it preserves ephemeral files correctly.
