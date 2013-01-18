\name{getErrors}
\alias{getErrors}
\title{Get error messages of jobs.}
\usage{
  getErrors(reg, ids, print = TRUE)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{ids}{[\code{integer}]\cr Ids of jobs.  Default is
  all jobs.}

  \item{print}{[\code{logical(1)}]\cr Print error messages?
  Default is \code{TRUE}.}
}
\value{
  [\code{character}]. Error messages for jobs as character
  vector invisibly returned.\cr \code{NA} if job has
  terminated successfully.
}
\description{
  Get error messages of jobs.
}
\seealso{
  \code{\link{showLog}} for more contextual error
  informations.
}

