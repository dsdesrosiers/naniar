% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/missing_data_tidiers.R
\name{percent_missing_case}
\alias{percent_missing_case}
\title{Percentage of cases that contain a missing values.}
\usage{
percent_missing_case(data)
}
\arguments{
\item{data}{a dataframe}
}
\value{
numeric the percentage of cases that contain a missing value
}
\description{
Calculate the percentage of cases (rows) that contain a missing value.
}
\examples{

percent_missing_case(airquality)

}

