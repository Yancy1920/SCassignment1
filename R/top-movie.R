top_movie <- function(movie_unlisted) {
  movie_unlisted <- arrange(movie_unlisted, desc(average_rating))
  movie_top <- movie_unlisted[1:15,]
  return(movie_top)
}
# pacman::p_load(tidyverse, targets)
# tar_load(movie_unlisted)
# top_movie(movie_unlisted)
