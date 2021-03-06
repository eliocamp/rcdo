## This file was created automatically, do not edit by hand.


#' Wind transformation
#' 
#' This module converts relative divergence and vorticity to U and V wind and vice
#' versa. Divergence and vorticity are spherical harmonic coefficients in spectral
#' space and U and V are on a global regular Gaussian grid. The Gaussian latitudes
#' need to be ordered from north to south. The maximum number of supported
#' spectral coefficients is 4002000. Missing values are not supported.
#' 
#' @details
#'      dv2uv  Divergence and vorticity to U and V wind
#'             Calculate U and V wind on a Gaussian grid from spherical harmonic 
#'             coefficients of relative divergence and vorticity. The divergence and vorticity 
#'             need to have the names sd and svo or code numbers 155 and 138.
#'      uv2dv  U and V wind to divergence and vorticity
#'             Calculate spherical harmonic coefficients of relative divergence and vorticity
#'             from U and V wind. The U and V wind need to be on a Gaussian grid and need to have the 
#'             names u and v or the code numbers 131 and 132.
#' 
#' @name Wind
NULL

#' @param infile input file.
#' @param outfile output file.
#' @rdname Wind
#' @export
cdo_dv2uv <- function(infile, outfile = NULL) {
  .new_step(operator = 'dv2uv', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
#' @param infile input file.
#' @param outfile output file.
#' @rdname Wind
#' @export
cdo_uv2dv <- function(infile, outfile = NULL) {
  .new_step(operator = 'uv2dv', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
