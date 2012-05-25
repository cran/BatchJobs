\name{batchMapQuick}
\alias{batchMapQuick}
\title{Combination of makeRegistry, batchMap and submitJobs.}
\usage{
  batchMapQuick(fun, ..., more.args = list(),
    packages = character(0L), chunk.size, inds,
    resources = list(), temporary = FALSE)
}
\arguments{
  \item{fun}{[\code{function}]\cr Function to map over
  \code{...}.}

  \item{...}{[any]\cr Arguments to vectorize over (list or
  vector).}

  \item{more.args}{[\code{list}]\cr A list of other
  arguments passed to \code{fun}.  Default is empty list.}

  \item{packages}{[\code{character}]\cr Packages that will
  always be loaded on each node.  Default is
  \code{character(0)}.}

  \item{chunk.size}{[\code{integer(1)}]\cr Preferred number
  of jobs in each chunk.  Can not be used in combination
  with \code{n.chunks} Default is not to use chunking.}

  \item{inds}{[\code{integer}]\cr Indices of ids / chunks
  to submit.  Default is all.}

  \item{resources}{[\code{list}]\cr Required resources for
  all batch jobs.  Default is empty list.}

  \item{temporary}{[\code{logical}]\cr Create the
  \code{file.dir} inside R's \code{tempdir}?  Default is
  \code{FALSE}.}
}
\value{
  [\code{\link{Registry}}]
}
\description{
  Combination of \code{\link{makeRegistry}},
  \code{\link{batchMap}} and \code{\link{submitJobs}} for
  quick computations on the cluster. Should only be used by
  skilled users who know what they are doing. Creates the
  file.dir in current directory under the name
  \dQuote{.BatchJobs_bmq}, maps function, potentially
  chunks jobs and submits them.
}

