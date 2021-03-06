#' This function returns a comprehensive list of English stopwords that 
#' allows adding more customized words.
#'
#' @name CleverStopwords
#' 
#' @param words A list of strings that needs to be included in the stopwords.
#'
#' @return stopwords_all A list of strings that includes the complete set of stopwords.
#' 
#' @export
#'
#' @examples
#' words <- list("would", "aaa")
#' CleverStopwords(words)

CleverStopwords <- function(words) {
  # Check if input is a list
  if(!is.list(words)) { 
    stop("The input is not a list.")
  }
  
  # Check if list contains only string elements
  for (w in words){
    if(typeof(w) != "character") {
      stop("Each element of the input list should be a character(s)")
    }
  }
    
  stopwords <- as.list(stopwords::stopwords(language = "en"))
  new_stopwords <- words
  
  # Check if stopwords is imported from package
  if(length(stopwords) == 0) { 
    stop("The default stopwords is not imported from package.")
  }
  
  for (w in new_stopwords) {
    if (!(w %in% unlist(stopwords))) {
      stopwords <- append(stopwords, w)
    } 
    else {stopwords}
  }  
  return(stopwords[order(as.character(stopwords))])
}

