#' Programmatic access to the CATMAID API
#' 
#' To use, first call \code{\link{catmaid_login}} to authenticate to a catmaid 
#' server. You can then use functions such as 
#' \code{\link{catmaid_get_neuronnames}} or 
#' \code{\link{catmaid_get_compact_skeleton}} to query the server. You can also 
#' roll your own server queries using the low-level \code{\link{catmaid_fetch}} 
#' command.
#' 
#' @section Connections: By default all query functions will use the 
#'   server/authentication details specified by the last successful call to 
#'   \code{\link{catmaid_login}} unless a \code{\link{catmaid_connection}} 
#'   object is provided as an argument.
#'   
#' @section Package Options: See \code{\link{catmaid_login}} for details of the 
#'   options that can be set to specify default login values. It may make sense 
#'   to set these in your \code{.Rprofile} if you regularly use a specific 
#'   CATMAID server. Beware however that your R workspace will then include a 
#'   plain text version of your passwords.
#'   
#' @section Unit tests: Unit tests can be run as per the examples section below.
#'   In order to do live tests you will need to set environment variables with 
#'   your catmaid login credentials using the function
#'   \code{\link{catmaid_connection_setenv}}.
#' @name catmaid-package
#' @aliases catmaid
#' @docType package
#' @keywords package
#' @import httr nat
#' @examples
#' \dontrun{
#' ## test package
#' library(catmaid)
#' library(testthat)
#' test_package("catmaid")
#' 
#' ## same but use appropriate login info
#' conn=catmaid_login(server="https://myserver.com", user="calvin", password='hobbes')
#' ## alternatively, login using an API token
#' # see http://catmaid.github.io/dev/api.html#api-token for how to get one
#' conn=catmaid_login(server="https://myserver.com", 
#'                    token = "9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b")
#' catmaid_connection_setenv(conn)
#' test_package("catmaid")
#' }
#' @references Based in large part on code visible at 
#'   \url{https://github.com/schlegelp/CATMAID-to-Blender/blob/master/CATMAIDImport.py}
#'    See \url{http://catmaid.org} for further details about CATMAID and 
#'   \url{https://github.com/acardona/CATMAID/blob/master/django/applications/catmaid/urls.py}
#'    for a list of URLs that the web API accepts.
NULL
