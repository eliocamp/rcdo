escape_chars <- function(x) {
  escape <- c("\\{", "\\}", "\\[", "\\]")
  for (e in escape) {
    x <- gsub(e, paste0("\\", e), x)
  }
  return(x)
}

replace_unicode <- function(x) {
  chars <- c(r"(\\eqn{\\simeq})" = "≃")
  for (i in seq_along(chars)) {
    x <- gsub(chars[i], names(chars)[i], x, perl = TRUE)
  }
  return(x)
}

rm_quotes <- function(x) {
  gsub("^ +\"", "", x) |>
    gsub("\",", "", x = _)
}

rm_escaped <- function(x) {
  gsub(r"(\\)", "", x)
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
    trimws()

  list <- list(
    operators = list[[1]],
    short_description = paste0(list[-1], collapse = "")
  )

  list$operators <- trimws(strsplit(list$operators, ",")[[1]])

  operators <- c(operators, list)
  operators
}

process_section.DESCRIPTION <- function(section_text, operators) {
  operators$description <- section_text |>
    rm_quotes() |>
    rm_escaped() |>
    trimws() |>
    paste0(collapse = " ") |>
    escape_chars() |>
    replace_unicode()

  operators
}

process_section.NOTE <- function(section_text, operators) {
  operators$note <- section_text |>
    rm_quotes() |>
    trimws() |>
    paste0(collapse = " ") |>
    escape_chars()

  operators
}


process_section.OPERATORS <- function(section_text, operators) {
  operators$details <- section_text |>
    rm_quotes() |>
    paste0(collapse = "\n") |>
    escape_chars()

  operators
}


process_section.PARAMETER <- function(section_text, operators) {
  section_text <- section_text |>
    rm_quotes() |>
    rm_empy_strings() |>
    escape_chars()

  spaces_start <- stringr::str_count(section_text, "\\G ")

  param_start <- spaces_start == min(spaces_start)

  parameters <- section_text[param_start] |>
    trimws() |>
    strsplit(" ") |>
    vapply("[", FUN.VALUE = character(1), 1) |>
    gsub("=<[a-z]+>", "", x = _)

  types <- section_text[param_start] |>
    trimws() |>
    strsplit(" ") |>
    lapply(rm_empy_strings) |>
    vapply("[", FUN.VALUE = character(1), 2)

  descriptions <- section_text |>
    trimws()

  descriptions[param_start] <- descriptions[param_start] |>
    strsplit(" ") |>
    lapply(rm_empy_strings) |>
    vapply(\(x) paste0(x[-c(1, 2)], collapse = " "), FUN.VALUE = character(1))

  trues <- param_start
  param_start[!param_start] <- NA
  param_start[trues] <- seq_len(sum(trues, na.rm = TRUE))
  param_start <- data.table::nafill(param_start, "locf")

  descriptions <- tapply(descriptions, param_start, \(x) {
    paste0(x, collapse = "")
  })

  # For some operators (chname), some parameters are written as
  # "par1,par2,...". Split them up, remove the "..." and duplicate
  # the description.
  newpars <- strsplit(parameters, ",") |>
    lapply(\(x) x[x != "..."])

  parameters <- lapply(seq_along(newpars), \(i) {
    paste0(types[i], " - ", descriptions[i]) |>
      rep(length(newpars[[i]])) |>
      setNames(newpars[[i]])
  }) |>
    unlist()

  # Some are duplicated (listed both as its own parameter and as
  # parameter,parameter,....)
  parameters <- parameters[!duplicated(names(parameters))]

  # A couple of parameters are described as "parameter=value".
  # For example. ydrunavg uses "rm=c" to set "Read Method" to circular.
  # This will replace the "_", which breaks my parsing, but still those arguments
  # don't work. I need to figure out how to parse and pass them correctly.
  names(parameters) <- gsub("=", "_", names(parameters))

  # they are all optional for now because I cannot detect if they are
  # required.
  operators$params$optional <- parameters

  operators$params$optional <- operators$params$optional[
    !is.na(names(operators$params$optional))
  ]
  operators
}
