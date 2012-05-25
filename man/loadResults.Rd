\name{loadResults}
\alias{loadResults}
\title{Loads result files for id vector.}
\usage{
  loadResults(reg, ids, part = NA_character_,
    simplify = FALSE, use.names = TRUE)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Ids of jobs.  Default is
  all done jobs.}

  \item{part}{[\code{character}] Only useful for multiple
  result files, then defines which result file part(s)
  should be loaded.  \code{NA} means all parts are loaded,
  which is the default.}

  \item{simplify}{[\code{logical(1)}]\cr Should the result
  be simplified to a vector, matrix or higher dimensional
  array if possible?  Default is \code{TRUE}.}

  \item{use.names}{[\code{logical(1)}]\cr Should the
  returned list be named with the ids?  Default is
  \code{TRUE}.}
}
\value{
  [\code{list}]. Results of jobs as list, possibly named by
  ids.
}
\description{
  Loads result files for id vector.
}
\seealso{
  \code{\link{reduceResults}}
}

