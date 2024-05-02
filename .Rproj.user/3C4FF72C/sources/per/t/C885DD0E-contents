median_movie <- function(movie_unlisted){
  movie_median <- aggregate(movie_unlisted$average_rating, by=list(type=movie_unlisted$genres),median)
  movie_median <- arrange(movie_median,desc(x))
  names(movie_median) <- c("genres","median_average_rating")
  
  ggplot(movie_median)+
    geom_point(aes(x=genres,y=median_average_rating))
  
  return(movie_median)
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_unlisted)
# median_movie(movie_unlisted)
