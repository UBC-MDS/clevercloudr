#' This function performs stemming on a string and converts it into a character vector
#' @name CleverStemmer
#'
#' @param text Input a string
#'
#' @return a character vector that has been stemmed
#' @export
#'
#' @examples
#' CleverStemmer("running buying feeding")


CleverStemmer<- function(text) {

  if(!is.character(text)){
    stop("The input is not a string!")
  }

  library(corpus)

  stem_text <- corpus::text_tokens(text, stemmer = "en")
  output_text <- unlist(stem_text)
  return(output_text)
}
