#' Returns a long preprocessed string from a vector of strings, converts them to lower case
#' and removes punctuation and digits 
#'
#' @param text A vector of strings that needs to be preprocessed.
#'
#' @return prepro_text A string that cleans and stores all the inputs from text
#'                      
#' @export
#'
#' @examples
#' text <- c("hello world," , "welcome")
#' CleverClean(text)
