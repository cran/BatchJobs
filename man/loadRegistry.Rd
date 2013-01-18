\name{loadRegistry}
\alias{loadRegistry}
\title{Load a previously saved registry.}
\usage{
  loadRegistry(file.dir, work.dir)
}
\arguments{
  \item{file.dir}{[\code{character(1)}]\cr Location of the
  file.dir to load the registry from.}

  \item{work.dir}{[\code{character(1)}]\cr Location of the
  work. Unchanged if missing.  Note that the registry is
  not safed unless you set \code{save} to \code{TRUE}!}
}
\value{
  [\code{\link{Registry}}].
}
\description{
  Load a previously saved registry.
}

