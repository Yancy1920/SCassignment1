box_movie <- function(movie_unlisted){
  ggplot(movie_unlisted,aes(genres,average_rating))+
    geom_boxplot()+
    theme_classic()+
    theme(axis.text.x= element_text(angle=45, hjust=0.5,vjust=0.5))+
    labs(title = "Average Rating Boxplot",x="genres",y="Average Rating")
}

# pacman::p_load(tidyverse, targets)
# tar_load(movie_unlisted)
# box_movie(movie_unlisted)
