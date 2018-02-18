#' Crude Prevalance of Current Smoking, 2014
#'
#' A data set containing the estimated prevalance of current smoking among City of St. Louis residents by Census Tract.
#'
#' @docType data
#'
#' @usage data(stl_tbl_smoking)
#'
#' @format A tibble with 106 rows and 6 variables:
#' \describe{
#'   \item{geoID}{full census tract id number}
#'   \item{tractCE}{census tract id number}
#'   \item{nameLSAD}{census tract string}
#'   \item{pctSmoke}{crude prevalance estimate of current no health insurance, percent}
#'   \item{pctSmoke_Low}{lower bound of crude prevalance estimate}
#'   \item{pctSmoke_High}{upper bound of crude prevalance estimate}
#'   }
#'
#' @source \href{https://www.cdc.gov/500cities/}{Centers for Disease Control 500 Cities Project}
#'
#' #' @examples
#' str(stl_tbl_smoking)
#' head(stl_tbl_smoking)
#' summary(stl_tbl_smoking$pctSmoke)
#'
"stl_tbl_smoking"
