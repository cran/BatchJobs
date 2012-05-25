\name{killJobs}
\alias{killJobs}
\title{Kill a job on the batch system.}
\usage{
  killJobs(reg, ids)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Ids of jobs to kill.
  Default is none.}
}
\value{
  Vector of type \code{integer} with ids of killed jobs.
}
\description{
  Kill jobs which have already been submitted to the batch
  system. If a job is killed its internal state is reset as
  if it had not been submitted at all.
}
\details{
  The function informs if (a) the job you want to kill has
  not been submitted, (b) the job has already terminated,
  (c) for some reason no batch job is is available. In all
  3 cases above nothing is changed for the state of this
  job and no call to the internal kill cluster function is
  generated.

  In case of an error when killing, the function tries
  after a short sleep to kill the remaining batch jobs
  again. If this fails again for some jobs, the function
  gives up. Only jobs that could be killed are reset in the
  DB.
}

