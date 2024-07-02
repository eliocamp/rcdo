
## Operators classification and short description

op_list <- "~/Downloads/cdo-2.4.1/OPERATORS"
op_list <- readLines(op_list)[-c(1:6)]


section_divider <- "-------------------------------------------------------------"

operators <- list()

for (line in seq_along(op_list)) {
  this_line <- op_list[line]
  if (this_line == section_divider) {
    next
  }

  prev_line <- op_list[line - 1]
  next_line <- op_list[line + 1]

  if (prev_line == section_divider & next_line == section_divider) {
    section <- trimws(this_line)
    next
  }

  lines <- strsplit(this_line, " ")[[1]]
  lines <- lines[nchar(lines) != 0]

  family <- lines[1]
  operator <- lines[2]
  short_description <- paste(lines[-c(1:2)], collapse = " ")

  operator <- data.table::data.table(section = section,
                                     family = family,
                                     operator = operator,
                                     operator_short_description = short_description,
                                     stringsAsFactors = FALSE)

  operators[[length(operators) + 1]] <- operator

}

operators_info <- data.table::rbindlist(operators)



operators_info <- operators_info[operators_io, on = "operator"]



