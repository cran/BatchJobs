\name{findOnSystem}
\alias{findOnSystem}
\title{Find jobs which are present on the batch system at the moment.}
\usage{
  findOnSystem(reg, ids)
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
  Find jobs either queued, running, held, etc.
}

