# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Show attributes
#'
#' This operator prints the attributes of the data variables of a dataset.  Each attribute has the following structure:  \[var_nm@\]\[att_nm\]  var_nm  Variable name (optional). Example: pressure att_nm  Attribute name (optional). Example: units  The value of var_nm is the name of the variable containing the attribute (named att_nm) that you want to print. Use wildcards to print the attribute att_nm of more than one variable. A value of var_nm of '*' will print the attribute att_nm of all data variables. If var_nm is missing then att_nm refers to a global attribute.  The value of att_nm is the name of the attribute you want to print. Use wildcards to print more than one attribute. A value of att_nm of '*' will print all attributes. 
#'
#' 
#'
#' 
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name showattribute
NULL
