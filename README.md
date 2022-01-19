
<!-- README.md is generated from README.Rmd. Please edit that file -->

# clevercloudr

<!-- badges: start -->
<!-- badges: end -->

The goal of clevercloudr is to to serve as the one-step solution to
create meaningful and visually appealing word clouds. To create
meaningful word clouds, data scientists typically takes multiple steps
to clean the data, such as removing stopwords, removing punctuation and
digits, making the letters lower cases, conducting lemmatization and
stemming. This package will help data scientists clean the data easily
following the common practices and also allow to create more visually
appealing word clouds in relevant shapes.

## **Functions**

There are 4 functions in this package:

-   `CleverClean` A preprocessor to convert all the letters to lower
    case and remove punctuations.

-   `CleverLemStem` A preprocessor to conduct lemmatization and stemming
    on the text.

-   `CleverStopwords` A comprehensive list of English stopwords that
    allow adding more customized words.

-   `CleverWordCloud` As function to generate a visually appealing word
    cloud with customized shape and stopwords.

## **Fitting into the R ecosystem**

Packages that have similar functions:

-   [wordcloud](https://www.rdocumentation.org/packages/wordcloud/versions/2.6/topics/wordcloud):
    a word count generator that emphasis more frequently used words from
    an array of strings and represents them in the form of an image.

What we do different:

-   Our aim is to improve on the pre-processing of strings before
    creating a wordcloud in order to make it more user specific and
    efficient.

-   Word cloud only eliminates limited amount of stopwords, but with our
    package we are giving users the opportunity to add more stopwords
    that cater to their analysis.

-   We are focused on removing as many redundant and duplicate words by
    setting strings to lower case, removing punctuation, lemmatizing and
    stemming the text.

## Installation

You can install the development version of clevercloudr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/clevercloudr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(clevercloudr)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

## **Contributing**

Contributors of the project: Amelia Tang, Arushi Ahuja, Victor Francis,
Adrianne Leung

Interested in contributing? Check out the contributing guidelines.
Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## **License**

`clevercloudr` was created by Group_20. It is licensed under the terms
of the MIT license.
