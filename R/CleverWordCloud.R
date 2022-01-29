#' This function generates a meaningful word cloud with customized stopwords
#'
#' @param text Input a character vector
#' @param stopwords a list of strings
#' @return An image
#' @export
#'
#' @examples
#' CleverWordCloud(c("cry", "foot", "maximum", "is"), list("is"))
CleverWordCloud <- function(text, my_stopwords) {
  library(wordcloud)
  library(wordcloud2)
  library(RColorBrewer)
  library(tm)
  library(htmlwidgets)
  library(testthat)
  library(usethis)
  library(tidyverse)
  library(vecsets)

  if(is.data.frame(text)){
    stop("Cannot return wordcloud for dataframe object, only vector of characters are allowed as input")
  }
  if(is.numeric(text)){
    stop("Cannot return wordcloud for numeric object, only vector of characters are allowed as input")
  }
  if(!is.character(text)){
    stop("Cannot return wordcloud for non-character input")
  }
  if(is.integer(text)){
    stop("Cannot return wordcloud for integer object, only vector of characters are allowed as input")
  }

  if(!is.list(my_stopwords)){
    stop("my_stopwords is a list of strings")
  }

  stopwords_vector <- unlist(my_stopwords)
  input_text <- vecsets::vsetdiff(text, stopwords_vector)

  dataframe <- data.frame(word=input_text) |>
    group_by(word) |>
    summarise(freq=n())

  wc <- wordcloud2(data = dataframe, color = "random-light", backgroundColor = "grey")
  saveWidget(wc,"wordcloud.html",selfcontained = F)
  webshot::webshot("wordcloud.html","wordcloud.png",vwidth = 1992, vheight = 1744)
  return(wc)
}
