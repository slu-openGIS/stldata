#' Major Bodies of Water in the City of St. Louis
#'
#' A simple features data set containing polygons for the major bodies of water in the city.
#'
#' @docType data
#'
#' @usage data(stl_sf_hydro)
#'
#' @format A simple feature with 2 rows and 4 variables:
#' \describe{
#'   \item{HYDROID}{Census identification number}
#'   \item{NAME}{name of body of water}
#'   \item{SQMETER}{area covered by water, square meters}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stl_sf_hydro)
#' str(stl_sf_hydro)
#' head(stl_sf_hydro)
#'
"stl_sf_hydro"
