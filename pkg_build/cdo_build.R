source("pkg_build/operators.R")
create_function <- function(operator, template) {
  operator_name <- operator$command

  if (operator$n_input == 1) {
    input <- "ifile"
  } else if (operator$n_input < Inf) {
    input <- paste0("ifile", seq_len(operator$n_input))
  } else if (operator$n_input == Inf) {
    input <- "..."
  }

  if (operator$n_output == 1) {
    output <- "ofile"
  } else if (operator$n_output == Inf) {
    output <- "obase"
  }

  params_args <- NULL
  params_list <- "NULL"
  extra_params <- NULL
  if (!is.null(c(operator$params$required, operator$params$optional))) {
    # browser()
    if (!is.null(operator$params$optional)) {
      optional <- paste0(names(operator$params$optional), sep = " = NULL")
      optional_list <- paste0(names(operator$params$optional), " = ", names(operator$params$optional))
      extra_params <- paste0("#' @param ", names(operator$params$optional), ", ", operator$param$optional)
    } else {
      optional <- NULL
      optional_list <- NULL
    }

    if (!is.null(operator$params$required)) {
      required <- names(operator$params$required)
      required_list <- paste0(names(operator$params$required), " = ", names(operator$params$required))
      extra_params <- c(extra_params,
                        paste0("#' @param ", names(operator$params$required), ", ", operator$param$required))
    } else {
      required <- NULL
      required_list <- NULL
    }


    params_args <- paste0(c(required, optional), collapse = ", ")
    params_list <- paste0("list(",
                          paste0(c(required_list, optional_list), collapse = ", "),
                          ")")
    extra_params <- paste0(extra_params, collapse = "\n")
  }

  arguments <- paste0(c(input, params_args, paste0(output, " = NULL")), collapse = ", ")
  data <- list(
    title = operator_name,
    description = operator$description,
    operator_name = operator_name,
    input = input,
    output = output,
    params_args = params_args,
    params_list = params_list,
    arguments = arguments,
    extra_params = extra_params
  )

  code <-   whisker::whisker.render(template, data)
  file <- paste0("R/cdo-", operator_name, ".R" )
  writeLines(code, file)
}

template <- readLines("pkg_build/cdo-template.R")

list.files("R", pattern = "cdo-", full.names = TRUE) |>
  file.remove()
for (operator in operators) {
  if (length(operator$n_output) != 0 && operator$n_output == 1) {
    create_function(operator, template)
  }
}

files <- list.files("pkg_build/extra-R/", full.names = TRUE)

for (file in files) {
  file.copy(file, file.path("R", basename(file)), overwrite = TRUE)
}

devtools::document(roclets = c('rd', 'collate', 'namespace'))
