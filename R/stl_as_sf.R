#' Load tibble as sf
#'
#' @description For specified tibbles, this function will load them as simple features with appropriate
#'     geometric data.
#'
#' @details This function currently works with the tibbles that contain census tract level data:
#'     stl_tbl_asthma, stl_tbl_income, stl_tbl_insurance, stl_tbl_lead, and stl_tbl_smoking
#'
#' @param table Unquoted name of one of the accepted tables
#'
#' @return A simple features object with the specified tibble joined to the appropriate geometry.
#'
#' @import sf
#' @importFrom dplyr %>%
#' @importFrom dplyr left_join
#' @importFrom dplyr select
#' @importFrom dplyr rename
#'
#' @export
stl_as_sf <- function(table) {

  # To prevent NOTE from R CMD check 'no visible binding for global variable'
  AWATER = COUNTYFP = FUNCSTAT = GEOID = INTPTLAT = INTPTLON = MTFCC = NAME = NAMELSAD =
  STATEFP = TRACTCE = NULL

  # quote input
  tblQ <- rlang::quo_name(rlang::enquo(table))

  # create list of acceptable tables
  tableList <- c("stl_tbl_asthma", "stl_tbl_income", "stl_tbl_insurance",
                 "stl_tbl_lead", "stl_tbl_smoking")

  # compare input with list of tables
  if (!!tblQ %nin% tableList) {
    stop("The given table is not available for automatic conversion to an sf object.")
  }

  tracts <- get("stl_sf_tracts")

  # merge data
  merge <- left_join(tracts, table, by = c("GEOID" = "geoID"))

  # clean up merge
  merge %>%
    select(-STATEFP, -COUNTYFP, -TRACTCE, -NAME, -NAMELSAD, -MTFCC, -FUNCSTAT, -AWATER,
           -INTPTLAT, -INTPTLON) %>%
    rename(geoID = GEOID) -> merge

  # return output
  return(merge)
}
