\name{resetJobs}
\alias{resetJobs}
\title{Reset computational state of jobs.}
\usage{
  resetJobs(reg, ids, force = FALSE)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Ids of jobs to kill.
  Default is none.}

  \item{force}{[\code{logical(1)}]\cr Also reset jobs which
  seem to be still running.  Default is \code{FALSE}.}
}
\value{
  Vector of reseted job ids.
}
\description{
  Reset state of jobs in the database. Useful under two
  circumstances: Either to re-submit them because of
  changes in e.g. external data or to resolve rare issues
  when jobs are killed in an unfortunate state and
  therefore blocking your registry. Note that this is a
  dangerous operation to perform which may harm the
  database integrity. You HAVE to externally make sure that
  none of the jobs you want to reset are still running. If
  you really know what you are doing, you may set
  \code{force} to \code{TRUE} to omit sanity checks on
  running jobs.
}

