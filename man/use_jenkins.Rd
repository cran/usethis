% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jenkins.R
\name{use_jenkins}
\alias{use_jenkins}
\title{Create Jenkinsfile for Jenkins CI Pipelines}
\usage{
use_jenkins()
}
\description{
\code{use_jenkins()} adds a basic Jenkinsfile for R packages to the project root
directory. The Jenkinsfile stages take advantage of calls to \code{make}, and so
calling this function will also run \code{use_make()} if a Makefile does not
already exist at the project root.
}
\seealso{
The \href{https://www.jenkins.io/doc/book/pipeline/jenkinsfile/}{documentation on Jenkins Pipelines}.

\code{\link[=use_make]{use_make()}}
}
