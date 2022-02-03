#' This function generates a meaningful word cloud with customized stopwords
#'
#' @name CleverWordCloud
#'
#' @param text Input a character vector
#' @param my_stopwords a list of strings
#'
#' @return An image
#'
#' @export
#'
#' @examples
#' \dontrun{
#' CleverWordCloud(c("cry", "foot", "maximum", "is"), list("is"))
#' }

CleverWordCloud <- function(text, my_stopwords) {
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
  word <- NULL
  
  dataframe <- data.frame(word = input_text ) %>%
    dplyr::group_by(word) %>%
    dplyr::summarise(freq=dplyr::n())

  wc <- wordcloud2::wordcloud2(data = dataframe, color = "random-light", backgroundColor = "grey")
  htmlwidgets::saveWidget(wc,"wordcloud.html",selfcontained = F)
  webshot::webshot("wordcloud.html","wordcloud.png",vwidth = 1992, vheight = 1744)
  return(wc)
}
