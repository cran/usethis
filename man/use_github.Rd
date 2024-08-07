% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/github.R
\name{use_github}
\alias{use_github}
\title{Connect a local repo with GitHub}
\usage{
use_github(
  organisation = NULL,
  private = FALSE,
  visibility = c("public", "private", "internal"),
  protocol = git_protocol(),
  host = NULL
)
}
\arguments{
\item{organisation}{If supplied, the repo will be created under this
organisation, instead of the login associated with the GitHub token
discovered for this \code{host}. The user's role and the token's scopes must be
such that you have permission to create repositories in this
\code{organisation}.}

\item{private}{If \code{TRUE}, creates a private repository.}

\item{visibility}{Only relevant for organisation-owned repos associated with
certain GitHub Enterprise products. The special "internal" \code{visibility}
grants read permission to all organisation members, i.e. it's intermediate
between "private" and "public", within GHE. When specified, \code{visibility}
takes precedence over \code{private = TRUE/FALSE}.}

\item{protocol}{One of "https" or "ssh"}

\item{host}{GitHub host to target, passed to the \code{.api_url} argument of
\code{\link[gh:gh]{gh::gh()}}. If unspecified, gh defaults to "https://api.github.com",
although gh's default can be customised by setting the GITHUB_API_URL
environment variable.

For a hypothetical GitHub Enterprise instance, either
"https://github.acme.com/api/v3" or "https://github.acme.com" is
acceptable.}
}
\description{
\code{use_github()} takes a local project and:
\itemize{
\item Checks that the initial state is good to go:
\itemize{
\item Project is already a Git repo
\item Current branch is the default branch, e.g. \code{main} or \code{master}
\item No uncommitted changes
\item No pre-existing \code{origin} remote
}
\item Creates an associated repo on GitHub
\item Adds that GitHub repo to your local repo as the \code{origin} remote
\item Makes an initial push to GitHub
\item Calls \code{\link[=use_github_links]{use_github_links()}}, if the project is an R package
\item Configures \code{origin/DEFAULT} to be the upstream branch of the local
\code{DEFAULT} branch, e.g. \code{main} or \code{master}
}

See below for the authentication setup that is necessary for all of this to
work.
}
\section{Git/GitHub Authentication}{

Many usethis functions, including those documented here, potentially interact
with GitHub in two different ways:
\itemize{
\item Via the GitHub REST API. Examples: create a repo, a fork, or a pull
request.
\item As a conventional Git remote. Examples: clone, fetch, or push.
}

Therefore two types of auth can happen and your credentials must be
discoverable. Which credentials do we mean?
\itemize{
\item A GitHub personal access token (PAT) must be discoverable by the gh
package, which is used for GitHub operations via the REST API. See
\code{\link[=gh_token_help]{gh_token_help()}} for more about getting and configuring a PAT.
\item If you use the HTTPS protocol for Git remotes, your PAT is also used for
Git operations, such as \verb{git push}. Usethis uses the gert package for this,
so the PAT must be discoverable by gert. Generally gert and gh will
discover and use the same PAT. This ability to "kill two birds with one
stone" is why HTTPS + PAT is our recommended auth strategy for those new
to Git and GitHub and PRs.
\item If you use SSH remotes, your SSH keys must also be discoverable, in
addition to your PAT. The public key must be added to your GitHub account.
}

Git/GitHub credential management is covered in a dedicated article:
\href{https://usethis.r-lib.org/articles/articles/git-credentials.html}{Managing Git(Hub) Credentials}
}

\examples{
\dontrun{
pkgpath <- file.path(tempdir(), "testpkg")
create_package(pkgpath)

## now, working inside "testpkg", initialize git repository
use_git()

## create github repository and configure as git remote
use_github()
}
}
