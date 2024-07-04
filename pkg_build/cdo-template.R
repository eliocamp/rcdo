## This file was created automatically, do not edit by hand.
#' {{title}}
#'
#' {{description}}
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
{{extra_params}}
#'
#' @export
cdo_{{operator_name}} <- function({{arguments}}) {
  cdo(operator = operators${{operator_name}},
      input = list({{input}}),
      params = {{params_list}},
      output = c({{output}})
  )
}
