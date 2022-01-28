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
  wc <- wordcloud2(data = dataframe, color = "random-light", backgroundColor = "grey")
  saveWidget(wc,"wordcloud.html",selfcontained = F)
  webshot::webshot("wordcloud.html","wordcloud.png",vwidth = 1992, vheight = 1744)
  wc
}
