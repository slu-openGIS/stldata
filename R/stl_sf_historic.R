#' Historic Districts in the City of St. Louis
#'
#' A simple features data set containing polygons for the major bodies of water in the city.
#'
#' @docType data
#'
#' @usage data(stl_sf_historic)
#'
#' @format A simple feature with 102 rows and 6 variables:
#' \describe{
#'   \item{NUMBER}{District number}
#'   \item{NAME}{District name}
#'   \item{LAYER}{District type}
#'   \item{COUNT}{count}
#'   \item{DATE}{District creation date}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stl_sf_historic)
#' str(stl_sf_historic)
#' head(stl_sf_historic)
#'
"stl_sf_historic"
