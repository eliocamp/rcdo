# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Ensemble validation tools
#'
#' This module computes ensemble validation scores and their decomposition such as the Brier and cumulative ranked probability score (CRPS). The first file is used as a reference it can be a climatology, observation or reanalysis against which the skill of the ensembles given in infiles is measured. Depending on the operator a number of output files is generated each containing the skill score and its decomposition corresponding to the operator. The output is averaged  over horizontal fields using appropriate weights for each level and timestep in rfile.  All input files need to have the same structure with the same variables. The date information of a timestep in outfile is the date of the first input file. The output files are named as &lt;outfilebase&gt;.&lt;type&gt;.&lt;filesuffix&gt; where &lt;type&gt; depends on the operator and &lt;filesuffix&gt; is determined from the output file type. There are three output files for operator enscrps and four output files for operator ensbrs.  The CRPS and its decomposition into Reliability and the potential CRPS are calculated by an appropriate averaging over the field members (note, that the CRPS does *not* average linearly). In the three output files &lt;type&gt; has the following meaning: crps for the CRPS, reli for the reliability and crpspot for the potential crps. The relation CRPS = CRPS_\{pot\} + RELI holds.  The Brier score of the Ensemble given by infiles with respect to the reference given in rfile and the threshold x is calculated. In the four output files &lt;type&gt; has the following meaning: brs for the Brier score wrt threshold  x; brsreli for the Brier score reliability wrt threshold x; brsreso for the Brier score resolution wrt threshold x; brsunct for the Brier score uncertainty wrt threshold x. In analogy to the CRPS the following relation holds: BRS(x) = RELI(x)-RESO(x)+ UNCT(x).  The implementation of the decomposition of the CRPS and Brier Score follows Hans Hersbach (2000): Decomposition of the Continuous Ranked Probability Score for Ensemble Prediction Systems, in: Weather and Forecasting (15) pp. 559-570.  The CRPS code decomposition has been verified against the CRAN - ensemble validation package from R. Differences occur when grid-cell area is not uniform as the implementation in R does not account for that.  
#'
#' @details
#'     enscrps  Ensemble CRPS and decomposition
#'     ensbrs   Ensemble Brier score
#'              Ensemble Brier Score and Decomposition
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
#' @name ensval
NULL
