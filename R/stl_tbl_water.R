#' Clean Water Act Listed Rivers and Streams
#'
#' A data set containing rivers and streams listed under the clean water act in St. Louis.
#'
#' @docType data
#'
#' @usage data(stl_tbl_water)
#'
#' @format A tibble with 179 rows and 6 variables:
#' \describe{
#'   \item{YR}{year listed}
#'   \item{WBID}{water body id number}
#'   \item{WATER_BODY}{water body name}
#'   \item{POLLUTANT}{pollutant type}
#'   \item{SOURCE_}{pollutant source}
#'   \item{PERM_ID}{permanent id number}
#'   }
#'
#' @examples
#' str(stl_tbl_water)
#' head(stl_tbl_water)
#' summary(stl_tbl_water$pctUnins)
#'
"stl_tbl_water"
