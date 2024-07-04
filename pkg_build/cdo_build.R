source("pkg_build/operators.R")
create_function <- function(operator, template) {
  operator_name <- operator$command

  if (operator$n_input == 1) {
    input <- "list(ifile)"
    input_args <- "ifile"
    input_param <- "ifile String with the path to the input file."

  } else if (operator$n_input < Inf) {
    input_args <- paste0("ifile", seq_len(operator$n_input))
    input <- paste0("list(", paste0(input_args, collapse = ", "), ")")
    input_param <- paste0(paste0(input_args, collapse = ","),
                          " Strings with the path to the input files.")
  } else {
    input <- "as.list(ifiles)"
    input_args <- "ifiles"
    input_param <- "ifiles Character vector with the path to the input files."
  }

  if (operator$n_output == 1) {
    output <- "ofile"
    output_param <- "ofile String with the path to the output file."
  } else if (operator$n_output < Inf) {
    output <- paste0("ofile", seq_len(operator$n_output))
    output_param <- paste0(paste0(output, collapse = ","),
                          " Strings with the path to the output files.")
  } else {
    output <- "obase"
    output_param <- "obase String with the basename of the output files."
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

  arguments <- paste0(c(input_args, params_args, paste0(output, " = NULL")), collapse = ", ")
  data <- list(
    family = operator$family,
    operator_name = operator_name,
    input = input,
    input_param = input_param,
    output = output,
    output_param = output_param,
    params_args = params_args,
    params_list = params_list,
    arguments = arguments,
    extra_params = extra_params,
    warning = "## This file was created automatically, do not edit by hand."
  )

  code <-   whisker::whisker.render(template, data)
  file <- paste0("R/cdo-", operator_name, ".R" )
  writeLines(code, file)
}


list.files("R", full.names = TRUE) |>
  file.remove()

template <- readLines("pkg_build/cdo-template.R")

for (operator in operators) {
  if (length(operator$n_output) != 0 && operator$n_output != 0) {
    create_function(operator, template)
  }
}


template_family <- readLines("pkg_build/cdo-template-family.R")

for (help in helps) {
  if (length(help$details) > 0) {
    help$details <- gsub("\\n", "\n", help$details)
    help$details <- paste0("@details\n", help$details)
  }
  help$details <- gsub("\\n", "\n#' ", help$details)

  if (length(help$note) > 0) {
    help$note <- gsub("\\n", "\n", help$note)
    help$note <- paste0("@section Note: \n", help$note)
  }

  help$note <- gsub("\\n", "\n#' ", help$note)

  help$warning <- "## This file was created automatically, do not edit by hand."

  code <- whisker::whisker.render(template_family, help)
  file <- paste0("R/family-", help$name, ".R" )
  writeLines(code, file)
}



files <- list.files("pkg_build/extra-R/", full.names = TRUE)

for (file in files) {
  file.copy(file, file.path("R", basename(file)), overwrite = TRUE)
}

usethis::use_data(operators, overwrite = TRUE, internal = TRUE)



devtools::document(roclets = c('rd', 'collate', 'namespace'))
