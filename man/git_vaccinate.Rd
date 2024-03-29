% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/git.R
\name{git_vaccinate}
\alias{git_vaccinate}
\title{Vaccinate your global gitignore file}
\usage{
git_vaccinate()
}
\description{
Adds \code{.Rproj.user}, \code{.Rhistory}, \code{.Rdata}, \code{.httr-oauth}, \code{.DS_Store}, and \code{.quarto} to
your global (a.k.a. user-level) \code{.gitignore}. This is good practice as it
decreases the chance that you will accidentally leak credentials to GitHub.
\code{git_vaccinate()} also tries to detect and fix the situation where you have a
global gitignore file, but it's missing from your global Git config.
}
