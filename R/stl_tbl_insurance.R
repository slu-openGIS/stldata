#' Crude Prevalance of No Health Insurance, 2014
#'
#' A data set containing the estimated prevalance of no health insurance among City of St. Louis residents by Census Tract.
#'
#' @docType data
#'
#' @usage data(stl_tbl_insurance)
#'
#' @format A tibble with 106 rows and 6 variables:
#' \describe{
#'   \item{geoID}{full census tract id number}
#'   \item{tractCE}{census tract id number}
#'   \item{nameLSAD}{census tract string}
#'   \item{pctUnins}{crude prevalance estimate of current no health insurance, percent}
#'   \item{pctUnins_Low}{lower bound of crude prevalance estimate}
#'   \item{pctUnins_High}{upper bound of crude prevalance estimate}
#'   }
#'
#' @source \href{https://www.cdc.gov/500cities/}{Centers for Disease Control 500 Cities Project}
#'
#' #' @examples
#' str(stl_tbl_insurance)
#' head(stl_tbl_insurance)
#' summary(stl_tbl_insurance$pctUnins)
#'
"stl_tbl_insurance"
