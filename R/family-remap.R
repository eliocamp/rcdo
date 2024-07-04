## This file was created automatically, do not edit by hand.
#' Grid remapping
#'
#' Interpolation between different horizontal grids can be a very time-consuming process. Especially if the data are on an unstructured and/or a large grid. In this case the interpolation process can be split into two parts. Firstly the generation of the interpolation weights, which is the most time-consuming part. These interpolation weights can be reused for every remapping process with the operator remap. This operator remaps all input fields to a new horizontal grid. The remap type and the interpolation weights of one input grid are read from a NetCDF file. More weights are computed if the input fields are on different grids. The NetCDF file with the weights should follow the SCRIP convention. Normally these weights come from a previous call to one of the genXXX operators (e.g. genbil) or were created by the original SCRIP package. 
#'
#' 
#'
#' 
#'
#' @name remap
NULL
