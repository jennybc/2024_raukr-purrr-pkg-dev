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

# anonymous function
# base R's syntax (>= 4.1.0)
map(got_chars, \(x) length(x[["aliases"]]))

map_int(got_chars, \(x) length(x[["aliases"]]))




#+ eval = FALSE
# What's each character's name?
map(got_chars,\(x) x[["name"]])
map(sw_people, \(x) x[["name"]])

# What color is each SW character's hair?
map(sw_people, \(x) x[["hair_color"]])

# Is the GoT character alive?
map(got_chars, \(x) x[["alive"]])

# Is the SW character female?
map(sw_people, \(x) x[["gender"]] == "female")

# How heavy is each SW character?
map(sw_people, \(x) x[["mass"]])



#+ eval = FALSE
map_lgl(sw_people, \(x) x[["gender"]] == "female")

map_int(got_chars, \(x) length(x[["aliases"]]))

map_chr(got_chars, \(x) x[["name"]])


#+ eval = FALSE
# What's each character's name?
map(got_chars, \(x) x[["name"]])

# What color is each SW character's hair?
map(sw_people, \(x) x[["hair_color"]])

# Is the GoT character alive?
map(got_chars, \(x) x[["alive"]])

# How heavy is each SW character?
map(sw_people, \(x) x[["mass"]])

#+ eval = FALSE
map(got_chars, \(x) x[["name"]])
map_chr(got_chars, "name")




#+ eval = FALSE
map_chr(got_chars, c(14, 1), .default = NA)
map_chr(got_chars, list("allegiances", 1), .default = NA)

map_chr(sw_vehicles, list("pilots", 1), .default = NA)


#+ eval = FALSE
books <- map(got_chars_named, "books")

map_chr(books[1:2], paste, collapse = ", ")
map_chr(books[1:2], \(x) paste(x, collapse = ", "))

got_chars[[9]][["titles"]][[4]]
pluck(got_chars, 9, "titles", 4)
idx <- list(9, "titles", 4)
pluck(got_chars, !!!idx)



library(tidyverse)
library(gapminder)

countries <- c("Argentina", "Brazil", "Canada")
gap_small <- gapminder |>
  filter(country %in% countries, year > 1996)
gap_small

write_one <- function(x) {
  filename <- paste0(x, ".csv")
  dataset <- filter(gap_small, country == x)
  write_csv(dataset, filename)
}

walk(countries, write_one)
list.files(pattern = "*.csv")




library(tidyverse)

csv_files <- list.files(pattern = "*.csv")
csv_files

csv_files |>
  map(read_csv, show_col_types = FALSE) |>
  list_rbind()
