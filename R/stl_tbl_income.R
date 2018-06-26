#' Median Income by Census Tract, 2010 and 2015
#'
#' A data set containing the estimated median incomes for each City of St. Louis Census Tract for 2010 and 2015.
#'
#' @docType data
#'
#' @usage data(stl_tbl_income)
#'
#' @format A tibble with 106 rows and 8 variables:
#' \describe{
#'   \item{geoID}{full census tract id number}
#'   \item{tractCE}{census tract id number}
#'   \item{nameLSAD}{census tract string}
#'   \item{mi10}{2010 median income estimate}
#'   \item{mi10_moe}{margin of error for 2010 median income estimate}
#'   \item{mi10_inflate}{2010 median income estimate in 2016 dollars}
#'   \item{mi16}{2016 median income estimate}
#'   \item{mi16_moe}{margin of error for 2016 median income estimate}
#'   \item{delta}{change in median income from 2010 to 2016}
#'   }
#'
#' @source \href{https://www.census.gov}{U.S. Census Bureau}
#'
#' @examples
#' str(stl_tbl_income)
#' head(stl_tbl_income)
#' summary(stl_tbl_income$mi10_inflate)
#'
"stl_tbl_income"
