\name{waitForJobs}
\alias{waitForJobs}
\title{Wait for termination of jobs on the batch system.}
\usage{
  waitForJobs(reg, ids, sleep = 10, timeout = 604800,
    stop.on.error = FALSE)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{\link{matrix}}]\cr Vector of job ids.
  Default is all jobs currently on the system.}

  \item{sleep}{[\code{numeric(1)}]\cr Seconds to sleep
  between updates. Default is \code{10}.}

  \item{timeout}{[\code{numeric(1)}]\cr After waiting
  \code{timeout} seconds, show a message and return
  \code{FALSE}.  This argument may be required on some
  systems where, e.g., expired jobs or jobs on hold are
  problematic to detect. If you don't want a timeout, set
  this to \code{Inf}.  Default is \code{604800} (one
  week).}

  \item{stop.on.error}{[\code{logical(1)}]\cr Stop if a job
  terminates with an error? Default is \code{FALSE}.}
}
\value{
  Returns \code{TRUE} on success and \code{FALSE} if either
  \code{stop.on.error} is \code{TRUE} and an error occured
  or the timeout is reached.
}
\description{
  Waits for termination of jobs while displaying a progress
  bar containing summarizing informations of the jobs. The
  following abbrevations are used in the progress bar:
  \dQuote{S} for number of jobs on system, \dQuote{R} for
  number of jobs running \dQuote{D} for number of jobs
  successfully terminated and \dQuote{E} for number of jobs
  terminated with an R exception.
}

