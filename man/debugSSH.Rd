\name{debugSSH}
\alias{debugSSH}
\title{Helper function to debug SSH mode.}
\usage{
  debugSSH(nodenames, rhome = "", dir = getwd())
}
\arguments{
  \item{nodenames}{[\code{character}]\cr Nodes on which
  workers should be constructed for the test.}

  \item{rhome}{[\code{character}]\cr Paths to R
  installation on the workers.  Must be have same length
  and order as \code{nodenames}.  Length 1 is also allowed,
  which means that the path is the same for all nodes.
  \dQuote{} means R installation on the PATH is used, of
  course this implies that it must be on the PATH (also for
  non-interactive shells)!  Default is \dQuote{}.}

  \item{dir}{[\code{character(1)}]\cr Path where internally
  used test registries can be created.  Note that this must
  be shared by all workers.  Default is current working
  directory.}
}
\value{
  Nothing.
}
\description{
  Useful in case of configuration problems. Tries different
  operations of increasing difficulty and provides debug
  output on the console.
}

