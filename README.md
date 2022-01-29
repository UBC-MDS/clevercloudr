
# clevercloudr

<!-- badges: start -->

<!-- badges: end -->

The goal of clevercloudr is to to serve as the one-step solution to create meaningful and visually appealing word clouds. To create meaningful word clouds, data scientists typically takes multiple steps to clean the data, such as removing stopwords, removing punctuation and digits, making the letters lower cases, conducting lemmatization and stemming. This package will help data scientists clean the data easily following the common practices and also allow to create more visually appealing word clouds in relevant shapes.

## **Functions**

There are 4 functions in this package:

-   `CleverClean` A preprocessor to convert all the letters to lower case and remove punctuation.

-   `CleverStemmer` A preprocessor to stemming on the text.

-   `CleverStopwords` A comprehensive list of English stopwords that allow adding more customized words.

-   `CleverWordCloud` As function to generate a visually appealing word cloud with customized shape and stopwords.

## **Fitting into the R ecosystem**

Packages that have similar functions:

-   [wordcloud2](https://cran.r-project.org/web/packages/wordcloud2/vignettes/wordcloud.html): a word cloud generator for data visualization. 

What we do differently:

-   Our aim is to improve on the pre-processing of strings before creating a wordcloud in order to make it more user specific and efficient.

-   The package wordcloud does not allow customization of stopwords, but with our package gives users the opportunity to add stopwords that cater to their analysis.

-   We follow the standard practices of cleaning data to make the text suitable for creating meaningful word cloud, focusing on removing as duplicate words by setting all letters to lower case, removing punctuation and digits as well as applying stemmer to further process the text.  

## Installation

You can install the development version of clevercloudr from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/clevercloudr")
```

## Example

This is a basic example which shows you how to solve a common problem:

```{r example}
library(clevercloudr)
## basic example code
```


## **Contributing**

Contributors of the project: Amelia Tang, Arushi Ahuja, Victor Francis, Adrianne Leung

Interested in contributing? Check out the contributing guidelines. Please note that this project is released with a Code of Conduct. By contributing to this project, you agree to abide by its terms.

## **License**

`clevercloudr` was created by Amelia Tang, Arushi Ahuja, Victor Francis, Adrianne Leung. It is licensed under the terms of the MIT license.
