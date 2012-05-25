\name{findMissingResults}
\alias{findMissingResults}
\title{Find jobs for which results are still missing.}
\usage{
  findMissingResults(reg, ids)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Subset of job ids to
  restrict the result to.  Default is all jobs.}
}
\value{
  [\code{integer}]. Ids of jobs.
}
\description{
  Find jobs for which results are still missing.
}

