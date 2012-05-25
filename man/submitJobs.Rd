\name{submitJobs}
\alias{submitJobs}
\title{Submit jobs or chunks of jobs to batch system via cluster function.}
\usage{
  submitJobs(reg, ids, resources = list(), wait,
    max.retries = 10L, job.delay)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Vector for job id or list
  of vectors of chunked job ids.  Only corresponding jobs
  are submitted. Chunked jobs will get executed
  sequentially as a single job for the scheduler.  Default
  is all jobs which were not yet submitted to the batch
  system.}

  \item{resources}{[\code{list}]\cr Required resources for
  all batch jobs.  Default is empty list.}

  \item{wait}{[\code{function(retries)}]\cr Function that
  defines how many seconds should be waited in case of a
  temporary error.  Default is exponential back-off with
  \code{10*2^retries}.}

  \item{max.retries}{[\code{integer(1)}]\cr Number of times
  to submit one job again in case of a temporary error
  (like filled queues). Each time \code{wait} is called to
  wait a certain number of seconds.  Default is 10 times.}

  \item{job.delay}{[\code{function(n, i)}]\cr Function that
  defines how many seconds a job should be delayed before
  it starts.  This is an expert option and only necessary
  to change, when you want submit extremely many jobs. We
  then delay the jobs a bit to write the submit messages as
  early as possible to avoid writer starvation.  \code{n}
  is the number of jobs and \code{i} the number of the ith
  job.  The default is no delay for less than 100 jobs and
  otherwise \code{runif(1, 0.1*n, 0.2*n)}.}
}
\value{
  Vector of submitted job ids.
}
\description{
  If the internal submit cluster function completes
  successfully, the \code{retries} counter is set back to 0
  and the next job or chunk is submitted. If the internal
  submit cluster function returns a fatal error, the submit
  process is completely stopped and an exception is thrown.
  If the internal submit cluster function returns a
  temporary error, the submit process waits for a certain
  time, which is determined by calling the user-defined
  \code{wait}-function with the current \code{retries}
  counter, the counter is increased by 1 and the same job
  is submitted again. If \code{max.retries} is reached the
  function simply terminates.
}
\examples{
reg <- makeRegistry(id="BatchJobsExample", file.dir=tempfile(), seed=123)
f <- function(x) x^2
batchMap(reg, f, 1:10)
submitJobs(reg)
}

