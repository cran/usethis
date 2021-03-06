% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/release.R
\name{use_github_release}
\alias{use_github_release}
\title{Draft a GitHub release}
\usage{
use_github_release(host = deprecated(), auth_token = deprecated())
}
\arguments{
\item{host, auth_token}{\ifelse{html}{\figure{lifecycle-deprecated.svg}{options: alt='Deprecated lifecycle'}}{\strong{Deprecated}}: No longer consulted
now that usethis allows the gh package to lookup a token based on a URL
determined from the current project's GitHub remotes.}
}
\description{
Creates a \strong{draft} GitHub release for the current package using the current
version and \code{NEWS.md}. If you are comfortable that it is correct, you will
need to publish the release from GitHub. It also deletes \code{CRAN-RELEASE} and
checks that you've pushed all commits to GitHub.
}
