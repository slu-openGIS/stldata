#' City of St. Louis Murders, 2008-2016
#'
#' A dataset containing murders for the years 2008 through 2016 in the City of St. Louis.
#'
#' @format A data frame with 1394 rows and 10 variables:
#' \describe{
#'   \item{id}{STLMPD record number}
#'   \item{dateoccurred}{string date in dmy format for when murder occurred}
#'   \item{yearoccurred}{year murder occurred}
#'   \item{monthoccurred}{month murder occurred}
#'   \item{timeoccurred}{time murder occurred in 24-hour clock}
#'   \item{description}{\code{HOMICIDE}}
#'   \item{district}{SLMPD district where murder occurred}
#'   \item{neighborhood}{neighborhood where murder occurred}
#'   \item{ileadsaddress}{house address where murder occurred}
#'   \item{ileadsstreet}{street where murer occurred}
#'   ...
#' }
#' @source \url{http://www.slmpd.org/Crimereports.shtml}
#'
"stlMurders"
