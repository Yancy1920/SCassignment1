# Load packages required to define the pipeline:
library(targets)
library(tarchetypes)

# Set target options:
tar_option_set(
  packages = c("tidyverse", "gt","cowplot","readxl"),
  format = "rds"
)

tar_source()

list(
  tar_file(movie_file, "raw-data/movies.xlsx"),
  tar_target(movie_clean, clean_movie(movie_file)),
  tar_target(movie_unlisted, unlist_movie(movie_clean)),
  tar_target(movie_mean, mean_movie(movie_unlisted)),
  tar_target(movie_median, median_movie(movie_unlisted)),
  tar_target(genre_maxmean, getmaxmean_movie(movie_mean)),
  tar_target(genre_maxmedian, getmaxmedian_movie(movie_median)),
  tar_target(boxplot_movie, box_movie(movie_unlisted)),
  tar_target(table_genre, genre_table(movie_unlisted)),
  tar_target(genre_top, top_genre(movie_unlisted, genre_maxmean)),
  tar_target(movie_top, top_movie(movie_unlisted)),
  tar_quarto(readme, "README.qmd")
)
