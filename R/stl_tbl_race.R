#' White and Black Populations, 2010 and 2016
#'
#' A data set containing the estimated white and black populations for each City of St. Louis Census Tract for 2010 and 2016.
#'
#' @docType data
#'
#' @usage data(stl_tbl_race)
#'
#' @format A tibble with 106 rows and 13 variables:
#' \describe{
#'   \item{geoID}{full census tract id number}
#'   \item{tractCE}{census tract id number}
#'   \item{nameLSAD}{census tract string}
#'   \item{white10}{2010 white population estimate}
#'   \item{white10_moe}{margin of error for 2010 white population estimate}
#'   \item{white16}{2016 white population estimate}
#'   \item{white16_moe}{margin of error for 2016 white population estimate}
#'   \item{white_delta}{change in white population, 2010 to 2016}
#'   \item{black10}{2010 black population estimate}
#'   \item{black10_moe}{margin of error for 2010 black population estimate}
#'   \item{black16}{2016 black population estimate}
#'   \item{black16_moe}{margin of error for 2016 black population estimate}
#'   \item{black_delta}{change in black population, 2010 to 2016}
#'   }
#'
#' @source \href{https://www.census.gov}{U.S. Census Bureau}, 2010 and 2016 American Community Survey 5-year estimates, table \code{B02001}
#'
#' @examples
#' str(stl_tbl_race)
#' head(stl_tbl_race)
#' summary(stl_tbl_race$black_delta)
#'
"stl_tbl_race"
