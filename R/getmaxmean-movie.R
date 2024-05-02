getmaxmean_movie <- function(movie_mean){
  genre_maxmean <- movie_mean[1:3,]
  return(genre_maxmean)
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_mean)
# getmaxmean_movie(movie_mean)
