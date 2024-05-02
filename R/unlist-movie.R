unlist_movie <- function(movie_clean) {
  genre_list <- strsplit(with(movie_clean, genres), ",")
  genre_n <- sapply(genre_list,length)
  movie_sperate <- data.frame(primary_title=rep(with(movie_clean,primary_title),genre_n), genres=unlist(genre_list), average_rating=rep(with(movie_clean,average_rating),genre_n),num_votes=rep(with(movie_clean,num_votes),genre_n))
  
  return(movie_sperate)
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_clean)
# unlist_movie(movie_clean)
