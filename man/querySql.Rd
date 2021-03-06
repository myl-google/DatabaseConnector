% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sql.R
\name{querySql}
\alias{querySql}
\title{Retrieve data to a data.frame}
\usage{
querySql(connection, sql)
}
\arguments{
\item{connection}{The connection to the database server.}

\item{sql}{The SQL to be send.}
}
\value{
A data frame.
}
\description{
This function sends SQL to the server, and returns the results.
}
\details{
This function sends the SQL to the server and retrieves the results. If an error occurs during SQL
execution, this error is written to a file to facilitate debugging.
}
\examples{
\dontrun{
connectionDetails <- createConnectionDetails(dbms = "mysql",
                                             server = "localhost",
                                             user = "root",
                                             password = "blah",
                                             schema = "cdm_v4")
conn <- connect(connectionDetails)
count <- querySql(conn, "SELECT COUNT(*) FROM person")
disconnect(conn)
}
}
