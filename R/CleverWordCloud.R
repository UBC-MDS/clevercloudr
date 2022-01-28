#' This function generates a visually appealing word cloud with customized shape and stopwords.
#'
#' @param data DataFrame containing the words and their frequencies
#'
#' @return An image
#' @export
#'
#' @examples
#' CleverWordCloud(demoFreq)
CleverWordCloud <- function(dataframe=demoFreq) {
  library(wordcloud)
  library(wordcloud2)
  library(RColorBrewer)
  library(tm)
  library(htmlwidgets)
  # wordcloud(words = text, max.words=max_w, min.freq = 50,
  #       random.order=FALSE, rot.per=0.35,
  #       colors=brewer.pal(8, "Dark2"))

  if(!is.data.frame(dataframe)){
    stop("Cannot return wordcloud for non-dataframe object")
  }
  if(is.numeric(dataframe)){
    stop("Cannot return wordcloud for numeric object, dataframe objects only")
  }
  if(is.character(dataframe)){
    stop("Cannot return wordcloud for string object, dataframe objects only")
  }
  if(is.integer(dataframe)){
    stop("Cannot return wordcloud for integer object, dataframe objects only")
  }
  if(ncol(dataframe)!=2){
    stop("Input dataframe should have 2 columns: words, and count of words respectively")
  }

  wc <- wordcloud2(data = dataframe, color = "random-light", backgroundColor = "grey")
  saveWidget(wc,"wordcloud.html",selfcontained = F)
  webshot::webshot("wordcloud.html","wordcloud.png",vwidth = 1992, vheight = 1744)
  wc
}
