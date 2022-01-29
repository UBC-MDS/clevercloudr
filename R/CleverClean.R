#' Returns a long preprocessed string from a vector of strings, converts them to lower case
#' and removes punctuation and digits 
#'
#' @param text A list of strings that need to be pre-processed.
#'
#' @return prepro_text A character vector that cleans and stores all the inputs from text
#'                      
#' @export
#'
#' @examples
#' text <- list("hello world," , "welcome")
#' CleverClean(text)

CleverClean <- function(text) {
   
  #Checking if text is a list
  if(!is.list(text)){
    stop("Input paramter should be a list")
  }
  
  #Checking if list contain only string elements
  for (i in text) {
    if (!is.character(i)) {
      stop("List should only contain charactrr or string elements")
    }
  }
  
  #Making the list into a vector
  text <- unlist(text)
  
  #Making all strings lower case
  prepro_text <- tolower(text)
  
  #Removing all digits
  prepro_text <- tm::removeNumbers(prepro_text)
  
  #Removing all punctuation 
  prepro_text <- tm::removePunctuation(prepro_text)
  
  #Return the pre-processed vector
  return (prepro_text)
}
  