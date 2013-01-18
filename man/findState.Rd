\name{findDone}
\alias{findDone}
\alias{findErrors}
\alias{findExpired}
\alias{findMissingResults}
\alias{findNotDone}
\alias{findNotErrors}
\alias{findNotOnSystem}
\alias{findNotRunning}
\alias{findNotSubmitted}
\alias{findNotTerminated}
\alias{findOnSystem}
\alias{findRunning}
\alias{findSubmitted}
\alias{findTerminated}
\title{Find jobs depending on computional state.}
\usage{
  findDone(reg, ids)

  findNotDone(reg, ids)

  findMissingResults(reg, ids)

  findErrors(reg, ids)

  findNotErrors(reg, ids)

  findTerminated(reg, ids)

  findNotTerminated(reg, ids)

  findSubmitted(reg, ids)

  findNotSubmitted(reg, ids)

  findOnSystem(reg, ids)

  findNotOnSystem(reg, ids)

  findRunning(reg, ids)

  findNotRunning(reg, ids)

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
  \code{findDone}: Find jobs which succesfully terminated.

  \code{findNotDone}: Find jobs for which results are still
  missing.

  \code{findMissingResults}: Deprecated. Alias for
  findNotDone.

  \code{findErrors}: Find jobs where errors occured.

  \code{findNotErrors}: Find jobs where no errors occured.

  \code{findTerminated}: Find jobs which have terminated
  (done / error).

  \code{findNotTerminated}: Find jobs which have not
  terminated (not done / no error).

  \code{findSubmitted}: Find jobs which have been
  submitted.

  \code{findNotSubmitted}: Find jobs which have not been
  submitted.

  \code{findOnSystem}: Find jobs which are present on the
  batch system at the moment.

  \code{findNotOnSystem}: Find jobs which are not present
  on the batch system at the moment.

  \code{findRunning}: Find jobs which are running.

  \code{findNotRunning}: Find jobs which are not running.

  \code{findExpired}: Find jobs where walltime was probably
  hit. Right now the heuristic is as follows: Find all jobs
  that have submitted, did not abort with an error, did not
  complete with a result and are not submitted or running
  anymore.
}
