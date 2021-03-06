% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bsv.R, R/divide.R
\name{bsv}
\alias{bsv}
\alias{getBsv}
\alias{getBsvs}
\title{Construct Between Subset Variable (BSV)}
\usage{
bsv(val = NULL, desc = "")

getBsv(x, name)

getBsvs(x)
}
\arguments{
\item{val}{a scalar character, numeric, or date}

\item{desc}{a character string describing the BSV}

\item{x}{a key-value pair or a value}

\item{name}{the name of the BSV to get
d <- divide(iris, by = "Species",
  bsvFn = function(x)
    list(msl = bsv(mean(x$Sepal.Length))))
getBsvs(d[[1]]$value)
getBsv(d[[1]]$value, "msl")}
}
\description{
Construct between subset variable (BSV)

For a given key-value pair, get a BSV variable value by name (if present)
}
\details{
Should be called inside the \code{bsvFn} argument to \code{divide} used for constructing a BSV list for each subset of a division.
}
\examples{
irisDdf <- ddf(iris)

bsvFn <- function(dat) {
  list(
    meanSL = bsv(mean(dat$Sepal.Length), desc = "mean sepal length"),
    meanPL = bsv(mean(dat$Petal.Length), desc = "mean petal length")
  )
}

# divide the data by species
bySpecies <- divide(irisDdf, by = "Species", bsvFn = bsvFn)
# see BSV info attached to the result
bsvInfo(bySpecies)
# get BSVs for a specified subset of the division
getBsvs(bySpecies[[1]])

}
\seealso{
\code{\link{divide}}, \code{\link{getBsvs}}, \code{\link{bsvInfo}}
}
\author{
Ryan Hafen
}
