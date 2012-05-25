\name{getJobTimes}
\alias{getJobTimes}
\title{Get execution times of jobs.}
\usage{
  getJobTimes(reg, ids, use.names = TRUE)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Ids of jobs.  Default is
  all jobs.}

  \item{use.names}{[\code{logical(1)}]\cr Should result
  vector be named with \code{ids}?  Default is
  \code{TRUE}.}
}
\value{
  [\code{integer}]. Time in seconds for jobs, named with
  ids.  \code{NA} if job has not terminated successfully.
}
\description{
  Get execution times of jobs.
}

