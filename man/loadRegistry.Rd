\name{loadRegistry}
\alias{loadRegistry}
\title{Load a previously saved registry.}
\usage{
  loadRegistry(file.dir, save = FALSE)
}
\arguments{
  \item{file.dir}{[\code{character(1)}]\cr Location of the
  file.dir to load the registry from.}

  \item{save}{[\code{logical(1)}]\cr Set \code{file.dir} in
  the registry and save.  Useful if you moved the file dir,
  because you wanted to continue working somewhere else.
  Default is \code{FALSE}.}
}
\value{
  [\code{\link{Registry}}].
}
\description{
  Load a previously saved registry.
}

