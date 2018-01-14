# elConnect
#'
#' A helper function to connect to the database using .dbconf
#'
#' @param config Will use this config in the .dbconf file. Defaual 'client'
#'
#' @return A connection object as returned from RMySQL
#' @export
#' @examples
#' con = dbConnect()
#'
#' @seealso \code{link[RMySQL]}


elConnect <- function(config = 'client')
{
dbconfig <- ini::read.ini("~/.dbconf")[[config]]
dbconfig$port = if (is.null(dbconfig$port)) 3306 else as.integer(dbconfig$port)
con <- with(dbconfig,
              RMySQL::dbConnect(RMySQL::MySQL(), host = host, user = user, password = passwd, db = "met", port = port))
con
}
