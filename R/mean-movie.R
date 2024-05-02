mean_movie <- function(movie_unlisted){
  movie_mean <- aggregate(movie_unlisted$average_rating, by=list(type=movie_unlisted$genres),mean)
  movie_mean <- arrange(movie_mean,desc(x))
  names(movie_mean) <- c("genres","mean_average_rating")
  
  ggplot(movie_mean)+
    geom_point(aes(x=genres,y=mean_average_rating))
  
  return(movie_mean)
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_unlisted)
# mean_movie(movie_unlisted)
