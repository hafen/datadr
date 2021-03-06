% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conn_localDisk.R
\name{localDiskConn}
\alias{localDiskConn}
\title{Connect to Data Source on Local Disk}
\usage{
localDiskConn(loc, nBins = 0, fileHashFn = NULL, autoYes = FALSE,
  reset = FALSE, verbose = TRUE)
}
\arguments{
\item{loc}{location on local disk for the data source}

\item{nBins}{number of bins (subdirectories) to put data files into - if anticipating a large number of k/v pairs, it is a good idea to set this to something bigger than 0}

\item{fileHashFn}{an optional function that operates on each key-value pair to determine the subdirectory structure for where the data should be stored for that subset, or can be specified "asis" when keys are scalar strings}

\item{autoYes}{automatically answer "yes" to questions about creating a path on local disk}

\item{reset}{should existing metadata for this object be overwritten?}

\item{verbose}{logical - print messages about what is being done}
}
\value{
a "kvConnection" object of class "localDiskConn"
}
\description{
Connect to a data source on local disk
}
\details{
This simply creates a "connection" to a directory on local disk (which need not have data in it).  To actually do things with this connection, see \code{\link{ddo}}, etc.  Typically, you should just use \code{loc} to specify where the data is or where you would like data for this connection to be stored.  Metadata for the object is also stored in this directory.
}
\examples{
# connect to empty localDisk directory
conn <- localDiskConn(file.path(tempdir(), "irisSplit"), autoYes = TRUE)
# add some data
addData(conn, list(list("1", iris[1:10,])))
addData(conn, list(list("2", iris[11:110,])))
addData(conn, list(list("3", iris[111:150,])))
# represent it as a distributed data frame
irisDdf <- ddf(conn, update = TRUE)
irisDdf
}
\seealso{
\code{\link{addData}}, \code{\link{ddo}}, \code{\link{ddf}}, \code{\link{localDiskConn}}
}
\author{
Ryan Hafen
}
