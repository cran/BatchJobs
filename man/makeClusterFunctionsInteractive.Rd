\name{makeClusterFunctionsInteractive}
\alias{makeClusterFunctionsInteractive}
\title{Create cluster functions for synchronous execution in same session.}
\usage{
  makeClusterFunctionsInteractive()
}
\value{
  [\code{\link{ClusterFunctions}}].
}
\description{
  All jobs executed under these cluster functions are
  executed synchronously, in the same interactive R process
  that you currently are. That is, \code{submitJob} does
  not return until the job has finished. The main use of
  this \code{ClusterFunctions} implementation is to test
  and debug programs on a local computer.
}
\details{
  Listing jobs returns an empty vector (as no jobs can be
  running when you call this) and \code{killJob} returns at
  once (for the same reason).
}

