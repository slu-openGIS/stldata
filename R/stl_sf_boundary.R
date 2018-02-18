#' City of St. Louis Boundary
#'
#' A simple features data set containing a single polygon with the extent of the City of St. Louis's boundary.
#'
#' @docType data
#'
#' @usage data(stl_sf_boundary)
#'
#' @format A simple feature with 1 rows and 6 variables:
#' \describe{
#'   \item{GEOID}{county FIPS code}
#'   \item{NAME}{polygon name}
#'   \item{LAND_SQMI}{land area of city, square miles}
#'   \item{WATER_SQMI}{water area of city, square miles}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stl_sf_boundary)
#' str(stl_sf_boundary)
#' head(stl_sf_boundary)
#'
"stl_sf_boundary"
