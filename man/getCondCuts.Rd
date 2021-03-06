% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/divSpec_condDiv.R
\name{getCondCuts}
\alias{getCondCuts}
\title{Get names of the conditioning variable cuts}
\usage{
getCondCuts(df, splitVars)
}
\arguments{
\item{df}{a data frame}

\item{splitVars}{a vector of variable names to split by}
}
\description{
This is used internally for conditioning variable division.  It does not have much use outside of there, but is exported for convenience.
}
\examples{
# see how key names are obtained
getCondCuts(iris, "Species")
}
