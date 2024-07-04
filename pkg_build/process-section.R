
rm_quotes <- function(x) {
  gsub("^ +\"", "", x) |>
    gsub("\",", "", x = _)
}

rm_last_comma <- function(x) {
  gsub("\",")
}

rm_empy_strings <- function(x) {
  x[nchar(x) != 0]
}

process_section <- function(section_text, operators = list()) {
  NextMethod("process_section")
}

process_section.default <- function(section_text, operators) {
  return(operators)
}

process_section.NAME <- function(section_text, operators) {
  list <- section_text |>
    rm_quotes() |>
    trimws() |>
    paste0(collapse = "") |>
    strsplit("-") |>
    _[[1]] |>
    trimws() |>
    as.list() |>
    setNames(c("operators", "short_description"))

  list$operators <- trimws(strsplit(list$operators, ",")[[1]])

  operators <- c(operators, list)
  operators
}

process_section.DESCRIPTION <- function(section_text, operators) {
  operators$description <- section_text |>
    rm_quotes() |>
    trimws() |>
    paste0(collapse = "")

  operators
}

process_section.NOTE <- function(section_text, operators) {
  operators$note <- section_text |>
    rm_quotes() |>
    trimws() |>
    paste0(collapse = "")

  operators
}


process_section.OPERATORS <- function(section_text, operators) {
  operators$details <- section_text |>
    rm_quotes() |>
    paste0(collapse = "\n")

  operators
}


process_section.PARAMETER <- function(section_text, operators) {
  section_text <- section_text |>
    rm_quotes() |>
    trimws()

  parameters <- section_text |>
    strsplit(" ") |>
    vapply("[", FUN.VALUE = character(1), 1) |>
    gsub("=<[a-z]+>", "", x = _)

  types <- section_text |>
    strsplit(" ") |>
    lapply(rm_empy_strings) |>
    vapply("[", FUN.VALUE = character(1), 2)

  descriptions <- section_text |>
    strsplit(" ") |>
    lapply(rm_empy_strings) |>
    vapply(\(x) paste0(x[-(1:2)], collapse = " "), FUN.VALUE = character(1))

  # they are all optional for now because I cannot detect if they are
  # required.
  operators$params$optional <- paste0(types, " - ", descriptions) |>
    setNames(parameters)

  operators$params$optional <- operators$params$optional[!is.na(names(operators$params$optional))]
  operators
}



rm_quotes <- function(x) {
  gsub("^ +\"", "", x) |>
    gsub("\",", "", x = _)
}

rm_last_comma <- function(x) {
  gsub("\",")
}

rm_empy_strings <- function(x) {
  x[nchar(x) != 0]
}
