# Set attributes

This operator sets or deletes attributes of a dataset and writes the
result to outfile. The new attributes are only available in outfile if
the file format supports attributes. Each attribute has the following
structure:
\[var_nm@\]att_nm\[:{s\|d\|i}\]=\[att_val\|{\[var_nm@\]att_nm}\] var_nm
Variable name (optional). Example: pressure att_nm Attribute name.
Example: units att_val Comma-separated list of attribute values.
Example: pascal The value of var_nm is the name of the variable
containing the attribute (named att_nm) that you want to set. Use
wildcards to set the attribute att_nm to more than one variable. A value
of var_nm of '\*' will set the attribute att_nm to all data variables.
If var_nm is missing then att_nm refers to a global attribute. The value
of att_nm is the name of the attribute you want to set. For each
attribute a string (att_nm:s), a double (att_nm:d) or an integer
(att_nm:i) type can be defined. By default the native type is set. The
value of att_val is the contents of the attribute att_nm. att_val may be
a single value or one-dimensional array of elements. The type and the
number of elements of an attribute will be detected automatically from
the contents of the values. An already existing attribute att_nm will be
overwritten or it will be removed if att_val is omitted. Alternatively,
the values of an existing attribute can be copied. This attribute must
then be enclosed in curly brackets. A special meaning has the attribute
name FILE. If this is the 1st attribute then all attributes are read
from a file specified in the value of att_val.

## Usage

``` r
cdo_delattribute(ifile, attributes = NULL, ofile = NULL)

cdo_setattribute(ifile, attributes = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- attributes:

  STRING - Comma-separated list of attributes.

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

    setattribute  Set attributes
    delattribute  Delete attributes

## Note

Attributes are evaluated by CDO when opening infile. Therefor the result
of this operator is not available for other operators when this operator
is used in chaining operators.
