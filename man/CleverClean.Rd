% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CleverClean.R
\name{CleverClean}
\alias{CleverClean}
\title{Returns a long preprocessed string from a vector of strings, converts them to lower case
and removes punctuation and digits}
\usage{
CleverClean(text)
}
\arguments{
\item{text}{A list of strings that need to be pre-processed.}
}
\value{
prepro_text A character vector that cleans and stores all the inputs from text
}
\description{
Returns a long preprocessed string from a vector of strings, converts them to lower case
and removes punctuation and digits
}
\examples{
text <- list("hello world," , "welcome")
CleverClean(text)
}
