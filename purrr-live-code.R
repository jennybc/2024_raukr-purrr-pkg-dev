#' ---
#' title: "Live code from RaukR"
#' author: "Jenny Bryan"
#' date: "`r format(Sys.Date())`"
#' output: github_document
#' ---
#'
#' Use `rmarkdown::render()` on this or, in RStudio, click on the "Compile
#' Report" spiral-notebook icon.
#'
#' ## Where to find this document
#'
#' Shortlink humans can type:
#'
#'   * [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code)
#'
#' Horrible link that reveals how this is done:
#'
#'   * <https://www.dropbox.com/s/32ekchfbnswzd9r/jenny-live-code.R?raw=1>
#'
#' Using the `raw=1` query trick for rendering a DropBox-hosted file in the
#' browser:
#'
#'   * <https://help.dropbox.com/share/force-download>
#' learned from [Michael Levy](https://twitter.com/ucdlevy).
#'
#' How this works:
#'
#'   * I code live in an R script locally. I save often.
#'   * This file lives in a directory synced to DropBox.
#'   * You open the DropBox file at
#'     [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code) and refresh as
#'     needed.
#'   * Should allow you to see, copy, paste everything I've typed and save the
#'     entire transcript at the end. This file is highly perishable, so save
#'     your own copy if you want it.
#'   * Every now and then the refresh won't work. Just re-open from from the
#'     rstd.io link: [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code)
#'
#+ setup, include = FALSE
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", error = TRUE)

#+ live-code

library(purrr)
library(repurrrsive)

got_chars

#' How many elements are in got_chars?
length(got_chars)

#' Who is the 9th person listed in got_chars?
got_chars[[9]]$name
got_chars[[9]][["name"]]

# What information is given for this person?
names(got_chars[[9]])

# What is the difference between got_chars[9] and got_chars[[9]]?
str(got_chars[[9]])
str(got_chars[9])

str(got_chars[[9]], list.len = 4)
str(got_chars[9], list.len = 4)

View(got_chars)
View(got_chars[[9]])
View(got_chars[9])

# How many aliases does each character have?
daenerys <- got_chars[[9]]
length(daenerys[["aliases"]])

asha <- got_chars[[13]]
length(asha[["aliases"]])

f <- function(x) {
  length(x[["aliases"]])
}
f(asha)

map(got_chars, f)

map(got_chars, \(x) length(x[["aliases"]]))

# How many x does each (GoT or SW) character have?
# (x = titles, allegiances, vehicles, starships)
map(got_chars, \(x) length(x[["allegiances"]]))
map(got_chars, \(x) length(x[["titles"]]))
map(got_chars, \(x) length(x[["povBooks"]]))

# What's each character's name?
map_chr(got_chars, \(x) x[["name"]])
map_chr(sw_people, \(x) x[["name"]])

# What color is each SW character's hair?
map_chr(sw_people, \(x) x[["hair_color"]])

# Is the GoT character alive?
map_lgl(got_chars, \(x) x[["alive"]])

# Is the SW character female?
map_lgl(sw_people, \(x) x[["gender"]] == "female")

# How heavy is each SW character?
library(tidyverse)
map_chr(sw_people, \(x) x[["mass"]])
map_dbl(sw_people, \(x) parse_number(x[["mass"]], na = "unknown"))

map_chr(got_chars, "name")
map_chr(got_chars, 3)

got_chars |>
  map(\(x) x[["aliases"]]) |>
  map_int(\(x) sum(x != ""))

map_chr(sw_vehicles, "pilots")
map_chr(sw_vehicles, "pilots", .default = NA)
map_chr(sw_vehicles, list("pilots", 1), .default = NA)

map_chr(got_chars, "name")

got_chars_named <- set_names(got_chars, map_chr(got_chars, "name"))

got_chars |>
  set_names(map_chr(got_chars, "name")) |>
  map_lgl("alive")

allegiances <- map(got_chars_named, "allegiances")
tibble::enframe(allegiances, value = "allegiances")

got_chars_named |>
  map_chr(list("allegiances", 1), .default = NA)

got_chars_named |>
  map("allegiances") |>
  map_chr(str_flatten_comma)

# Which SW film has the most characters?
# View(sw_films)
sw_films |>
  set_names(map_chr(sw_films, "title")) |>
  map("characters") |>
  map_int(length) |>
  sort() |>
  rev()
# Attack of the Clones

# Which SW species has the most possible eye colors?
#View(sw_species)
sw_species_named <- sw_species |>
  set_names(map_chr(sw_species, "name"))
sw_species_named |>
  map("eye_colors") |>
  discard(\(x) x == "n/a") |>
  map(\(x) str_split_1(x, pattern = ",\\s*")) |>
  map_int(length) |>
  sort() |>
  rev()
# Human
sw_species_named[["Human"]][["eye_colors"]]

# Which GoT character has the most allegiances? Aliases? Titles?

# Which GoT character has been played by multiple actors?
got_chars_named |>
  map("playedBy") |>
  keep(\(x) length(x) > 1)

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
  map(\(x) read_csv(x, show_col_types = FALSE)) |>
  list_rbind()
