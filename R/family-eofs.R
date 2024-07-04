## This file was created automatically, do not edit by hand.
#' Empirical Orthogonal Functions
#'
#' This module calculates empirical orthogonal functions of the data in infile as the eigen values of the scatter matrix (covariance matrix) S of the data sample z(t). A more detailed description can be found above.  Please note, that the input data are assumed to be anomalies.  If operator eof is chosen, the EOFs are computed in either time or spatial space, whichever is the fastest. If the user already knows, which computation is faster, the module can be forced to perform a computation in time- or gridspace by using the operators eoftime or eofspatial, respectively. This can enhance performance, especially for very long time series, where the number of timesteps is larger than the number of grid-points. Data in infile are assumed to be anomalies. If they are not, the behavior of this module is not well defined. After execution outfile1 will contain all eigen-values and outfile2 the eigenvectors e_j. All EOFs and eigen-values are computed. However, only the first neof EOFs are written to outfile2. Nonetheless, outfile1 contains all eigen-values.  Missing values are not fully supported. Support is only checked for non-changing masks of missing values in time. Although there still will be results, they are not trustworthy, and a warning will occur. In the latter case we suggest to replace missing values by 0 in infile. 
#'
#' @details
#'     eof         Calculate EOFs in spatial or time space
#'     eoftime     Calculate EOFs in time space
#'     eofspatial  Calculate EOFs in spatial space
#'     eof3d       Calculate 3-Dimensional EOFs in time space
#' 
#'
#' 
#'
#' @name eofs
NULL
