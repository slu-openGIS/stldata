#' Census Tracts, 2016
#'
#' A simple features data set containing the geometry and associated attributes for the 2016 City of St. Louis
#' census tracts.
#'
#' @docType data
#'
#' @usage data(stl_sf_tracts)
#'
#' @format A data frame with 106 rows and 13 variables:
#' \describe{
#'   \item{STATEFP}{state FIPS code}
#'   \item{COUNTYFP}{county FIPS code}
#'   \item{TRACTCE}{tract FIPS code}
#'   \item{GEOID}{full GEOID string}
#'   \item{NAME}{tract FIPS code, decimal}
#'   \item{NAMELSAD}{tract name}
#'   \item{MTFCC}{geographic object classification}
#'   \item{FUNCSTAT}{current functional status}
#'   \item{ALAND}{area of tract land, square meters}
#'   \item{AWATER}{area of tract water, square meters}
#'   \item{INTPTLAT}{interpolated centroid value, latitude}
#'   \item{INTPTLON}{interpolated centroid value, longitude}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#' @source \href{https://www.census.gov}{U.S. Census Bureau}
#'
#' #' @examples
#' str(stl_sf_tracts)
#' head(stl_sf_tracts)
#' summary(stl_sf_tracts$ALAND)
#'
"stl_sf_tracts"
