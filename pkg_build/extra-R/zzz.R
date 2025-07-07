#nocov start
.onAttach <- function(...) {
    if (!interactive()) return()

    # get semirandom number without messing with the seed
    trigger <- (as.numeric(Sys.time()) %% 100) <= 5

    if (trigger) packageStartupMessage("Trans rights are human rights.")
}
#nocov end
