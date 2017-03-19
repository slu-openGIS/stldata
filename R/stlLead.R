#' Blood Lead Test Results in the City of St. Louis, 2010-2015
#'
#' A data set containing blood lead test results as well as race and poverty date for
#' the City of St. Louis by Census Tract. All demographic data are from the 2015 5-year
#' American Community Survey estimates for St. Louis Census Tracts.
#'
#' @docType data
#'
#' @usage data(stlLead)
#'
#' @format A data frame with 106 rows and 15 variables:
#' \describe{
#'   \item{geoID}{full census tract id number}
#'   \item{tractCE}{census tract id number}
#'   \item{nameLSAD}{census tract string}
#'   \item{countTested}{number of children screened for blood lead levels between 2010 and 2015}
#'   \item{pctElevated}{percentage of children tested who had blood lead levels greater than or equal to 5 micrograms per deciliter}
#'   \item{totalPop}{total population estimate, 2015}
#'   \item{totalPop_MOE}{margin of error for \code{totalPop}}
#'   \item{white}{estimate for white population, 2015}
#'   \item{white_MOE}{margin of error for \code{white}}
#'   \item{black}{estimate for black population, 2015}
#'   \item{black_MOE}{margin of error for \code{black}}
#'   \item{povertyTot}{estimate for persons living below poverty line, 2015}
#'   \item{povertyTot_MOE}{margin of error for \code{povertyTot}}
#'   \item{povertyU18}{estimate for children living below poverty line, 2015}
#'   \item{povertyU18_MOE}{margin of error for \code{povertyU18}}
#' }
#' @source \href{http://www.reuters.com/investigates/special-report/usa-lead-testing/#interactive-lead}{Reuters reporting on lead exposure} and 2015 5-year American Community Survey estimates for City of St. Louis Census Tracts via American Fact Finder
#' @references Pell, M.B. & Schneyer, J. (2016, December 19). Off the Charts: The thousands of U.S. locales where lead poisoning is worse than in Flint. \emph{Reuters}, retrieved from \href{http://www.reuters.com/investigates/special-report/usa-lead-testing}{website}.
#'
#' @examples
#' str(stlLead)
#' head(stlLead)
#' summary(stlLead$pctElevated)
#' summary(stlLead$black)
#' summary(stlLead$povertyTot)
#'
#' if (require("dplyr") & require("ggplot2")) {
#'
#'   # what is the relationship between race and lead test results?
#'     stlLead %>%
#'       mutate(propBlack = black / totalPop) %>%
#'       ggplot(aes(x = pctElevated, y = propBlack)) +
#'         geom_point() +
#'         geom_smooth()
#'
#'   # relationship between poverty and lead test results?
#'     stlLead %>%
#'       mutate(propPvty = povertyTot / totalPop) %>%
#'       ggplot(aes(x = pctElevated, y = propPvty)) +
#'         geom_point(method=lm) +
#'         geom_smooth()
#'
#' }
#'
"stlLead"
