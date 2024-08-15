source("pkg_build/process-section.R")
# Operators IO
op_list <- suppressWarnings(system("cdo --operators", intern = TRUE))

operators <- strsplit(op_list, " ") |>
  vapply(\(x) x[1], FUN.VALUE = character(1))

io <- utils::strcapture("\\({1}(-?[0123])\\|(-?[012])\\)", op_list,
                        proto = list(n_input = integer(1),
                                     n_output = integer(1)))

stopifnot(all(!is.na(io$n_input + io$n_output)))

operators_io <- data.table::data.table(operator = operators,
                                       n_input = as.numeric(io$n_input),
                                       n_output = as.numeric(io$n_output))

operators_io[n_input == -1, n_input := Inf]
operators_io[n_output == -1, n_output := Inf]


# Operators documentation and parameters (more or less)
help <- "pkg_build/cdo-2.4.2/src/operator_help.cc"

help <- readLines(help)

sections <- which(startsWith(help, "const "))

helps <- list()

for (i in seq_along(sections)[-length(sections)]) {
  help_page <- help[seq(sections[i], sections[i+1] - 1)]

  headers <- c(grep(r"( +"[A-Z]+",)", help_page), length(help_page) - 1)

  operator <- list()

  name <- help_page[1] |>
    gsub("const CdoHelp ", "", x = _) |>
    gsub("Help = \\{", "", x = _) |>
    tolower()

  for (j in seq_along(headers)[-length(headers)]) {
    section_name <- help_page[headers[j]] |>
      rm_quotes()

    section_text <- help_page[seq(headers[j] + 1, headers[j + 1] - 1)]

    class(section_text) <- section_name
# browser(expr = name == "expr" & section_name == "PARAMETER")
    operator <- process_section(section_text, operator)
  }

  helps[[i]] <- operator
  helps[[i]]$name <- name
  names(helps)[i] <- name
}


operators <- list()

not_build <- c("change", "windtrans", "cmor")

helps <- helps[!(names(helps) %in% not_build)]

for (help in helps) {
  for (op in help$operators)
    operators[[op]] <- list(
      command = op,
      params = help$params,
      family = help$name,
      n_input = operators_io[operator == op]$n_input,
      n_output = operators_io[operator == op]$n_output
    )
}


usethis::use_data(operators, overwrite = TRUE, internal = TRUE)

