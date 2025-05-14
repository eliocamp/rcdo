
.onAttach <- function(...) {
    if (!interactive()) return()

    # get semirandom number without messing with the seed
    trigger <- floor(as.numeric(Sys.time()) %% 100) <= 5

    if (trigger) packageStartupMessage("Trans rights are human rights.")
}
