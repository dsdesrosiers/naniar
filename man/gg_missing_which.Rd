% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{gg_missing_which}
\alias{gg_missing_which}
\title{Plot which variables contain a missing value}
\usage{
gg_missing_which(x)
}
\arguments{
\item{x}{a dataframe}
}
\value{
a ggplot plot
}
\description{
\code{gg_missing_which} (need a better name!) produces a set of rectangles that indicate whether there is a missing element in a column or not
}
\examples{

gg_missing_which(airquality)

}

