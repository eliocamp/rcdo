operators <- list(
  NULL
  , copy = list(
    command = "copy",
    short_description = "Copy datasets",
    description = "Copy datasets. Copies all input datasets to ofile",
    params = NULL,
    n_input = Inf,
    n_output = 1,
    family = "Copy",
    section = "File Operations"
  )

  , cat = list(
    command = "cat",
    description = "Concatenate datasets. Concatenates all input datasets and appends the result to the end of ofile. If ofile does not exist it will be created",
    params = NULL,
    n_input = Inf,
    n_output = 1
  )

  , replace = list(
    command = "replace",
    description = "The replace operator replaces variables of ifile1 with variables from ifile2 and write the result to ofile.",
    params = NULL,
    n_input = 2,
    n_output = 1
  )

  , merge = list(
    command = "merge",
    description = "Merge files",
    params = NULL,
    n_input = Inf,
    n_output = 1
  )

  , splitcode = list(
    command = "splitcode",
    description = "Split code numbers",
    params = list(
      optional = c("swap" = "Swap the position of obase and xxx in the output filename")
    ),
    n_input = 1,
    n_output = Inf
  )

  , splitsel = list(
    command = "splitsel",
    description = "splits ifile into pieces, one for each adjacent sequence t1, ...., tn of timesteps of the same selected time range",
    params = list(
      required = c("nsets" = "Number of input timesteps for each output file"),
      optional = c("noffset" = "Number of input timesteps skipped before the first timestep range (optional)",
                   "nskip" = "Number of input timesteps skipped between timestep ranges (optional)")
    ),
    n_input = 1,
    n_output = Inf
  )

  , eq = list(
    command = "eq",
    description = "compares two datasets field by field",
    params = NULL,
    n_input = 2,
    n_output = 1
  )

  , eqc = list(
    command = "eqc",
    description = "Compares all fields of a dataset with a constant",
    params = list(required = c("c" = "Constant")),
    n_input = 1,
    n_output = 1
  )

  , sqrt = list(
    command = "sqrt",
    description = "square root",
    params = NULL,
    n_input = 1,
    n_output = 1
  )

  , sub = list(
    command = "sub",
    description = "substract two fields",
    params = NULL,
    n_input = 2,
    n_output = 1
  )
)[-1]
