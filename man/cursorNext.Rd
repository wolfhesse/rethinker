% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cursor.R
\name{cursorNext}
\alias{cursorNext}
\title{Pull next object from a cursor}
\usage{
cursorNext(cursor, inBatch = FALSE)
}
\arguments{
\item{cursor}{Cursor to pull from; a result of \code{r()$...$run(...)}.}

\item{inBatch}{If set to \code{TRUE}, enables batch mode, i.e., returning the whole local cache (this is usually NOT the whole data available under cursor) rather than a single result.
Values other than \code{TRUE} or \code{FALSE} are invalid.}
}
\value{
In a default mode, a list representing the returned response JSON, or \code{NULL} if no data is available.
In a batch mode, list of such lists representing the whole cache (which may be empty, corresponding to default mode's \code{NULL}).
}
\description{
Pulls a datum from a given cursor, sending continuation queries when needed.
}
\note{
When this function empties local cache, it may ask RethinkDB for more data and hence block.
Use \code{\link{isCursorEmpty}} to decide if it makes sense to call \code{cursorNext}.
In case you don't need any more answers for the query, close cursor with \code{close} method.
}
\author{
Miron B. Kursa
}

