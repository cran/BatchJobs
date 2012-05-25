\name{findExpired}
\alias{findExpired}
\title{Find jobs where walltime was probably hit.}
\usage{
  findExpired(reg, ids)
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
  Right now the heuristic is as follows: Find all jobs that
  have submitted, did not abort with an error, did not
  complete with a result and are not submitted or running
  anymore.
}

