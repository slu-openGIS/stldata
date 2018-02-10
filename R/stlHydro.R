#' Major Bodies of Water in the City of St. Louis
#'
#' A simple features data set containing polygons for the major bodies of water in the city.
#'
#' @docType data
#'
#' @usage data(stlHydro)
#'
#' @format A simple feature with 2 rows and 11 variables:
#' \describe{
#'   \item{ANSICODE}{ANSI identification number}
#'   \item{HYDROID}{Census identification number}
#'   \item{FULLNAME}{name of body of water}
#'   \item{ALAND}{area covered by land}
#'   \item{INTPTLAT}{interpolated latitude of polygon's centroid}
#'   \item{INTPTLON}{interpolated longitude of polygon's centroid}
#'   \item{Shape_Leng}{length of polygon}
#'   \item{Shape_Area}{area of polygon}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stlHydro)
#' str(stlHydro)
#' head(stlHydro)
#'
"stlHydro"
