% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_cols.R
\name{add_prop_miss}
\alias{add_prop_miss}
\title{Add column containing proportion of missing data values}
\usage{
add_prop_miss(data)
}
\arguments{
\item{data}{a dataframe}
}
\value{
a dataframe
}
\description{
It can be useful when doing data analysis to add the proportion of missing data values into your dataframe. add_prop_miss adds a column named "prop_miss", which contains the proportion of missing values in that row.
}
\examples{

library(magrittr)
airquality \%>\% add_prop_miss()

# this can be applied to model the proportion of missing data
# as in Tierney et al bmjopen.bmj.com/content/5/6/e007450.full
library(rpart)
library(rpart.plot)

airquality \%>\%
add_prop_miss() \%>\%
rpart(prop_miss ~ ., data = .) \%>\%
prp(type = 4,
    extra = 101,
    prefix = "prop_miss = ")
}

