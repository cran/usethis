% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rstudio.R
\name{use_rstudio}
\alias{use_rstudio}
\title{Add RStudio Project infrastructure}
\usage{
use_rstudio(line_ending = c("posix", "windows"), reformat = TRUE)
}
\arguments{
\item{line_ending}{Line ending}

\item{reformat}{If \code{TRUE}, the \code{.Rproj} is setup with common options that
reformat files on save: adding a trailing newline, trimming trailing
whitespace, and setting the line-ending. This is best practice for
new projects.

If \code{FALSE}, these options are left unset, which is more appropriate when
you're contributing to someone else's project that does not have its own
\code{.Rproj} file.}
}
\description{
It is likely that you want to use \code{\link[=create_project]{create_project()}} or \code{\link[=create_package]{create_package()}}
instead of \code{use_rstudio()}! Both \verb{create_*()} functions can add RStudio
Project infrastructure to a pre-existing project or package. \code{use_rstudio()}
is mostly for internal use or for those creating a usethis-like package for
their organization. It does the following in the current project, often after
executing \code{proj_set(..., force = TRUE)}:
\itemize{
\item Creates an \code{.Rproj} file
\item Adds RStudio files to \code{.gitignore}
\item Adds RStudio files to \code{.Rbuildignore}, if project is a package
}
}
