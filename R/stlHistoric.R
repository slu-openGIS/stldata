#' Historic Districts in the City of St. Louis
#'
#' A simple features data set containing polygons for the major bodies of water in the city.
#'
#' @docType data
#'
#' @usage data(stlHistoric)
#'
#' @format A simple feature with 102 rows and 13 variables:
#' \describe{
#'   \item{COUNT_}{count}
#'   \item{LAYER}{District type}
#'   \item{DISNAME_FU}{District name}
#'   \item{DISNAME}{District name (possible duplicate)}
#'   \item{COMMENT}{Comments/notes about district}
#'   \item{DIS_TYPE}{Type of historic district}
#'   \item{DIS_NUM}{District number}
#'   \item{DISNUM}{District number (possible duplicate)}
#'   \item{DIS_DATE}{District date}
#'   \item{DIS_SHRT_N}{District name, short}
#'   \item{Shape_Leng}{length of polygon}
#'   \item{Shape_Area}{area of polygon}
#'   \item{geometry}{simple features geometry}
#'   }
#'
#'
#' @examples
#' class(stlHistoric)
#' str(stlHistoric)
#' head(stlHistoric)
#'
"stlHistoric"
