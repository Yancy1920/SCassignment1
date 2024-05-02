clean_movie <- function(movie_file) {
  movie_fl <- read_excel(movie_file,sheet=1,na="NA")
  movie_fl <- filter(movie_fl, (movie_fl$title_type=="movie")|(movie_fl$title_type=="tvMovie"), movie_fl$christmas
                     == "TRUE")
  movie_fl <- movie_fl |>
    select(primary_title
           ,genres, average_rating, num_votes)
  movie_fl <- na.omit(movie_fl)
  return(movie_fl)
}
# pacman::p_load(tidyverse, targets)
# tar_load(movie_file)
# clean_movie(movie_file)
