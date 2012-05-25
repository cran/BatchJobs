\name{makeClusterFunctionsMulticore}
\alias{makeClusterFunctionsMulticore}
\title{Use multiple cores on local Linux machine to spawn parallel jobs.}
\usage{
  makeClusterFunctionsMulticore(ncpus, max.jobs, max.load,
    script)
}
\arguments{
  \item{ncpus}{[\code{integers(1)}]\cr Number of VPUs of
  worker.  Default means to query the worker via
  \dQuote{/proc/cpuinfo}.}

  \item{max.jobs}{[\code{integer(1)}]\cr Maximal number of
  jobs that can run concurrently for the current registry.
  Default is \code{ncpus}.}

  \item{max.load}{[\code{numeric(1)}]\cr Load average (of
  the last 5 min) at which the worker is considered
  occupied, so that no job can be submitted.  Default is
  \code{ncpus-1}.}

  \item{script}{[\code{character(1)}]\cr Path to helper
  bash script which interacts with the worker.  You really
  should not have to touch this, as this would imply that
  we have screwed up and published an incompatible version
  for your system.  This option is only provided as a last
  resort for very experienced hackers.  Note that the path
  has to be absolute.  This is what is done in the package:
  \url{http://code.google.com/p/batchjobs/source/browse/trunk/BatchJobs/skel/inst/bin/linux-helper}
  Default means to take it from package directory.}
}
\value{
  [\code{\link{ClusterFunctions}}].
}
\description{
  Use multiple cores on local Linux machine to spawn
  parallel jobs.
}

