#' City of St. Louis Boundary
#'
#' A simple features data set containing a single polygon with the extent of the City of St. Louis's boundary.
#'
#' @docType data
#'
#' @usage data(stlBoundary)
#'
#' @format A simple feature with 1 rows and 6 variables:
#' \describe{
#'   \item{LAYER}{polygon description}
#'   \item{AREA_SQMI}{square mileage of city}
#'   \item{Name}{polygon name}
#'   \item{Shape_Leng}{length of polygon}
#'   \item{Shape_Area}{area of polygon}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stlBoundary)
#' str(stlBoundary)
#' head(stlBoundary)
#'
"stlBoundary"
