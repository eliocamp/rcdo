{{warning}}
#' {{title}}
#'
#' {{description}}
#'
#' @param {{input_param}}
#' @param {{output_param}}
{{extra_params}}
#'
#' @export
cdo_{{operator_name}} <- function({{arguments}}) {
  cdo(operator = operators${{operator_name}},
      input = {{input}},
      params = {{params_list}},
      output = c({{output}})
  )
}
