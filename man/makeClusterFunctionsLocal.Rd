\name{makeClusterFunctionsLocal}
\alias{makeClusterFunctionsLocal}
\title{Create cluster functions for synchronous execution on local host.}
\usage{
  makeClusterFunctionsLocal()
}
\value{
  [\code{\link{ClusterFunctions}}].
}
\description{
  All jobs executed under these cluster functions are
  executed synchronously, but in an independent, new R
  session. That is, \code{submitJob} does not return until
  the job has finished. The main use of this
  \code{ClusterFunctions} implementation is to test and
  debug programs on a local computer.
}
\details{
  Both killing and listing jobs is not supported by this
  implementation since at any one time there can be only
  one running job and while it is running, the master R
  process is blocked.
}

