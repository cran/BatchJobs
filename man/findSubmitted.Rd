\name{findSubmitted}
\alias{findSubmitted}
\title{Find jobs which have been submitted in the past.}
\usage{
  findSubmitted(reg, ids)
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
  Find jobs which have been submitted in the past.
}

