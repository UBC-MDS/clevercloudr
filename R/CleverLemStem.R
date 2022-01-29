#' This function conducts lemmatinzation and stemming on a list of strings/characters
#' @name CleverLemStem
#' @param text Input a list of strings/characters
#'
#' @return a lemmatized and stemmed string vector
#' @export
#'
#' @examples
#' CleverLemStem(list("crying", "feet", "maximum"))


CleverLemStem <- function(text) {
  library(textstem)

  if(!is.list(text)){
    stop("The input is not a list!")
  }

  for (i in text){
    if(typeof(i) != "character"){stop("Each element of the input list should be a string/character(s)")}
  }
  text <- as.vector(text)
  lem_text <- lemmatize_words(text)
  stem_lem_text <- stem_strings(lem_text, language = "porter")
  return(stem_lem_text)
}
