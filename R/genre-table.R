genre_table <- function(movie_unlisted){
  table_genre <- table(movie_unlisted$genres)
  table_genre <- sort(table_genre)
  return(table_genre)
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_unlisted)
# genre_table(movie_unlisted)
