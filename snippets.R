# the purrr slides are very "mature" and I've been making ad hoc updates as
# necessary
# the code in the slides isn't always formatted nicely :(
# but here are some snippets I've used (re)prex_rtf() on in recent updates

#+ eval = FALSE
# regular function
f <- function(x) {
  length(x[["aliases"]])
}
map(got_chars, f)

# anonymous function, rlang / tidyverse
map(got_chars, ~ length(.x[["aliases"]]))

# anonymous function, base R's syntax (>= 4.1.0)
map(got_chars, \(x) length(x[["aliases"]]))
