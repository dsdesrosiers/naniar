#' label_missing_1d
#'
#' Label whether a value is missing in either row of two columns. At the moment this is a more appealing alternative to miss_cat, which is at this stage a bit complicated.
#'
#' @param x1 a variable of a dataframe
#'
#' @return a vector indicating whether any of these rows had missing values
#'
#' @note can we generalise label_missing to work for any number of variables?
#'
#' @export
#'
#' @examples
#'
#' label_missing_1d(airquality$Ozone)
#'
label_missing_1d <- function(x1){

  # Catch NULL entries
  if(is.null(x1)) stop("Input cannot be NULL", call. = FALSE)
  # find which are missing and which are not.
  temp <- data.frame(x1) %>% is.na %>% rowSums()
  ifelse(temp == 0, # 0 means not missing
         "Not Missing", # not missing
         "Missing") # missing

}

#' label_missing_2d
#'
#' Label whether a value is missing in either row of two columns. This is a more appealing alternative to miss_cat, which seems a bit overcomplicated.
#'
#' @param x1 a variable of a dataframe
#' @param x2 another variable of a dataframe
#'
#' @return a vector indicating whether any of these rows had missing values
#' @export
#'
#' @examples
#'
#' label_missing_2d(airquality$Ozone, airquality$Solar.R)
#'
label_missing_2d <- function(x1, x2){

  # Catch NULL entries
  if(is.null(x1) | is.null(x2)) stop("Input cannot be NULL", call. = FALSE)
  # find which are missing and which are not.
  temp <- data.frame(x1,x2) %>% is.na %>% rowSums()
  ifelse(temp == 0, # 0 means not missing
         "Not Missing", # not missing
         "Missing") # missing

}
