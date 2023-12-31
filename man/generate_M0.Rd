% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_M.R
\name{generate_M0}
\alias{generate_M0}
\title{Generate M0 matrix}
\usage{
generate_M0(n_groups, name = NULL, size, r0, delta = rep(1, n_groups))
}
\arguments{
\item{n_groups}{Number of groups}

\item{name}{A character vector of length \code{n_groups} containing the names of the groups (default is A,B,C...)}

\item{size}{A numeric vector of length \code{n_groups} containing the sizes of the groups}

\item{r0}{A numeric vector of length \code{n_groups} containing the basic reproductive number of the disease in each group}

\item{delta}{A numeric vector of length \code{n_groups} containing the assortativity coefficient for each group (default is 1 for all groups)}
}
\value{
A matrix representing the number of secondary cases generated by an infector from a particular group (column) in a totally susceptible population in each other group (row), taking into the receiving group size, the assortativity coefficient and the infector's R0.
}
\description{
Generates a matrix representing the number of secondary cases generated by an infector from a particular group (column) in a totally susceptible population in each other group (row), taking into the receiving group size, the assortativity coefficient and the infector's R0.
}
\examples{
generate_M0(
  n_groups = 2,
  name = c("A", "B"),
  size = c(100, 100),
  r0 = c(5, 2.5),
  delta = c(2, 2)
)
}
\seealso{
\code{\link{generate_Mcol}}
}
