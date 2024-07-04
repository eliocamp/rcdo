## This file was created automatically, do not edit by hand.
#' Set parameter table
#'
#' This module transforms data and metadata of infile via a parameter table and writes the result to outfile. A parameter table is an ASCII formatted file with a set of parameter entries for each variable. Each new set have to start with \&quot;\\&amp;parameter\&quot; and to end with \&quot;/\&quot;.  The following parameter table entries are supported:  Entry           &amp; Type        &amp; Description name            &amp; WORD        &amp; Name of the variable out_name        &amp; WORD        &amp; New name of the variable param           &amp; WORD        &amp; Parameter identifier (GRIB1: code[.tabnum];  GRIB2: num[.cat[.dis]]) out_param       &amp; WORD        &amp; New parameter identifier type            &amp; WORD        &amp; Data type (real or double) standard_name   &amp; WORD        &amp; As defined in the CF standard name table long_name       &amp; STRING      &amp; Describing the variable units           &amp; STRING      &amp; Specifying the units for the variable comment         &amp; STRING      &amp; Information concerning the variable cell_methods    &amp; STRING      &amp; Information concerning calculation of means or climatologies cell_measures   &amp; STRING      &amp; Indicates the names of the variables containing cell areas and volumes missing_value   &amp; FLOAT       &amp; Specifying how missing data will be identified valid_min       &amp; FLOAT       &amp; Minimum valid value valid_max       &amp; FLOAT       &amp; Maximum valid value ok_min_mean_abs &amp; FLOAT       &amp; Minimum absolute mean ok_max_mean_abs &amp; FLOAT       &amp; Maximum absolute mean factor          &amp; FLOAT       &amp; Scale factor delete          &amp; INTEGER     &amp; Set to 1 to delete variable convert         &amp; INTEGER     &amp; Set to 1 to convert the unit if necessary  Unsupported parameter table entries are stored as variable attributes. The search key for the variable depends on the operator. Use setpartabn to search variables by the name. This is typically used for NetCDF datasets. The operator setpartabp searches variables by the parameter ID. 
#'
#' @details
#'     setpartabp  Set parameter table
#'                 Search variables by the parameter identifier.
#'     setpartabn  Set parameter table
#'                 Search variables by name.
#' 
#'
#' 
#'
#' @name setpartab
NULL
