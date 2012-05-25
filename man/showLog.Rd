\name{showLog}
\alias{showLog}
\title{Display the contents of a log file.}
\usage{
  showLog(reg, id)
}
\arguments{
  \item{reg}{[\code{\link{Registry}}]\cr Registry.}

  \item{id}{[\code{integer(1)}]\cr Id of selected job.
  Default is first id in registry.}
}
\value{
  [\code{character(1)}]. Invisibly returns path to log
  file.
}
\description{
  Display the contents of a log file, useful in case of
  errors.
}
\details{
  Note this rare special case: When you use chunking,
  submit some jobs, some jobs fail, then you resubmit these
  jobs again in different chunks, the log files will
  contain the log of the old, failed job as well. But
  \code{showLog} will always jump to the correct part of
  the new log file.
}

