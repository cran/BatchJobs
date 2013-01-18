\name{loadResult}
\alias{loadResult}
\title{Loads a specific result file.}
\usage{
  loadResult(reg, id, part = NA_character_)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{id}{[\code{integer(1)}]\cr Id of job.}

  \item{part}{[\code{character}] Only useful for multiple
  result files, then defines which result file part(s)
  should be loaded.  \code{NA} means all parts are loaded,
  which is the default.}
}
\value{
  [any]. Result of job.
}
\description{
  Loads a specific result file.
}
\seealso{
  \code{\link{reduceResults}}
}

