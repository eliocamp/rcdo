## This file was created automatically, do not edit by hand.
#' Import AMSR binary files
#'
#' This operator imports gridded binary AMSR (Advanced Microwave Scanning Radiometer) data. The binary data files are available from the AMSR ftp site (ftp://ftp.ssmi.com/amsre). Each file consists of twelve (daily) or five (averaged) 0.25 x 0.25 degree grid (1440,720) byte maps. For daily files, six daytime maps in the following order, Time (UTC), Sea Surface Temperature (SST), 10 meter Surface Wind Speed (WSPD), Atmospheric Water Vapor (VAPOR), Cloud Liquid Water (CLOUD), and Rain Rate (RAIN), are followed by six nighttime maps in the same order. Time-Averaged files contain just the geophysical layers in the same order \[SST, WSPD, VAPOR, CLOUD, RAIN\]. More information to the data is available on the AMSR homepage http://www.remss.com/amsr.
#'
#' 
#'
#' 
#'
#' @name importamsr
NULL
