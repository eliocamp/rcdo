{{warning}}
{{input_param}}
{{output_param}}
{{extra_params}}
#'
#' @export
#' @rdname {{family}}
cdo_{{operator_name}} <- function({{arguments}}) {
  cdo(operator = operators${{operator_name}},
      input = {{input}},
      params = {{params_list}},
      output = c({{output_body}})
  )
}
