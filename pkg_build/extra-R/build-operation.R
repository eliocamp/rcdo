build_operation <- function(operation, chain = FALSE, options = NULL, options_replace = FALSE) {
  if (is.character(operation)) {
    return(paste(shQuote(normalizePath(operation)), collapse = " "))
  }

  operation$input <- vapply(operation$input, build_operation, chain = TRUE, FUN.VALUE = character(1))
  operation$input <- paste(operation$input, collapse = " ")
  
  if (isTRUE(options_replace)) {
    operation$options <- options
  } else {
    operation$options <- paste0(c(operation$options, options, getOption(rcdo_options)), collapse = " ")
  }
  
  prefix <- paste(c(get_cdo(), operation$options), collapse = " ")

  if (chain) {
    operation$operator$command <- paste0("-", operation$operator$command)
    operation$output <- NULL
    prefix <- NULL
  }

  if (!is.null(operation$params)) {
    operation$params <- operation$params[lengths(operation$params) != 0]
    if (length(operation$params) == 0) {
      operation$params <- NULL
    } else {
      operation$params <- vapply(operation$params, as.character, character(1))
      operation$params <- paste0(operation$params, collapse = ",")
    }
  }

  if (is.null(operation$output) && !chain) {
    operation$output <- "{{output}}"
  }
  if (nzchar(operation$input)) {
    operation$input <- paste("[", operation$input, "]")
  }

  paste(c(prefix,
          paste(c(operation$operator$command, operation$params), collapse = ","),
          operation$input,
          operation$output),
        collapse = " ")
}

