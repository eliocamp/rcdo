## This file was created automatically, do not edit by hand.
#' CMOR lite
#'
#' The CMOR (Climate Model Output Rewriter) library comprises a set of functions, that can be used to produce CF-compliant NetCDF files that fulfill the requirements of many of the climate community's standard model experiments. These experiments are collectively referred to as MIP's. Much of the metadata written to the output files is defined in MIP-specific tables, typically made available from each MIP's web site.  The CDO operator cmorlite process the header and variable section of such MIP tables and writes the result with the internal IO library CDI. In addition to the CMOR 2 and 3 table format, the CDO parameter table format is also supported. The following parameter table entries are available:  Entry           &amp; Type        &amp; Description name            &amp; WORD        &amp; Name of the variable out_name        &amp; WORD        &amp; New name of the variable type            &amp; WORD        &amp; Data type (real or double) standard_name   &amp; WORD        &amp; As defined in the CF standard name table long_name       &amp; STRING      &amp; Describing the variable units           &amp; STRING      &amp; Specifying the units for the variable comment         &amp; STRING      &amp; Information concerning the variable cell_methods    &amp; STRING      &amp; Information concerning calculation of means or climatologies cell_measures   &amp; STRING      &amp; Indicates the names of the variables containing cell areas and volumes missing_value   &amp; FLOAT       &amp; Specifying how missing data will be identified valid_min       &amp; FLOAT       &amp; Minimum valid value valid_max       &amp; FLOAT       &amp; Maximum valid value ok_min_mean_abs &amp; FLOAT       &amp; Minimum absolute mean ok_max_mean_abs &amp; FLOAT       &amp; Maximum absolute mean factor          &amp; FLOAT       &amp; Scale factor delete          &amp; INTEGER     &amp; Set to 1 to delete variable convert         &amp; INTEGER     &amp; Set to 1 to convert the unit if necessary  Most of the above entries are stored as variables attributes, some of them are handled differently. The variable name is used as a search key for the parameter table. valid_min, valid_max, ok_min_mean_abs and ok_max_mean_abs are used to check the range of the data. 
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name cmorlite
NULL
