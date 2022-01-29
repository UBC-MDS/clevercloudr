#' This function generates a visually appealing word cloud with customized shape and stopwords.
#'
#' @param data DataFrame containing the words and their frequencies
#'
#' @return An image
#' @export
#'
#' @examples
#' CleverWordCloud(c("cry", "foot", "maximum"))
CleverWordCloud <- function(text) {
  library(wordcloud)
  library(wordcloud2)
  library(RColorBrewer)
  library(tm)
  library(htmlwidgets)
  library(testthat)
  library(usethis)
  library(tidyverse)

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


  dataframe <- data.frame(word=text) |>
    group_by(word) |>
    summarise(freq=n())

  wc <- wordcloud2(data = dataframe, color = "random-light", backgroundColor = "grey")
  saveWidget(wc,"wordcloud.html",selfcontained = F)
  webshot::webshot("wordcloud.html","wordcloud.png",vwidth = 1992, vheight = 1744)
  wc
}
