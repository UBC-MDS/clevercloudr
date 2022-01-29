#' This function performs stemming on a string or a character vector and converts it into a character vector
#' @name CleverStemmer
#'
#' @param text Input a string or a character vector
#'
#' @return a character vector that has been stemmed
#' @export
#'
#' @examples
#' CleverStemmer("running buying feeding")
#' CleverStemmer(c("running", "buying", "feeding"))

library(corpus)

CleverStemmer<- function(text) {

  # Check is the input is a string or a character vector
  if(!is.character(text)){
    stop("The input is not a string or character vector!")
  }

  stem_text <- corpus::text_tokens(text, stemmer = "en")
  output_text <- unlist(stem_text)
  return(output_text)
}
