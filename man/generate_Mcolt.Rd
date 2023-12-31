% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_M.R
\name{generate_Mcolt}
\alias{generate_Mcolt}
\title{Generate Mcolt matrix}
\usage{
generate_Mcolt(
  n_groups,
  name = NULL,
  size,
  r0,
  prop_susceptible,
  delta = rep(1, n_groups)
)
}
\arguments{
\item{n_groups}{Number of groups}

\item{name}{A character vector of length \code{n_groups} containing the names of the groups (default is A,B,C...)}

\item{size}{A numeric vector of length \code{n_groups} containing the sizes of the groups}

\item{r0}{A numeric vector of length \code{n_groups} containing the basic reproductive number of the disease in each group}

\item{prop_susceptible}{A numeric vector of length \code{n_groups} containing the proportion of susceptible in each group (between 0 and 1)}

\item{delta}{A numeric vector of length \code{n_groups} containing the assortativity coefficient for each group (default is 1 for all groups)}
}
\value{
A matrix representing the probability of transmission by an infector from a particular group (column) in a partially susceptible population in each other group (row), taking into the receiving group size, the assortativity coefficient, the infector's R0 and the receiving group proportion of suceptible.
}
\description{
Generates a matrix representing the proportion of infection going from one group to another accounting for the groups sizes, the assortativity coefficient, the infector's R0 and the proportion of susceptible.
}
\examples{
generate_Mcolt(
  n_groups = 2,
  name = c("A", "B"),
  size = c(100, 100),
  r0 = c(5, 2.5),
  prop_susceptible = c(0.5, 0.95),
  delta = c(2, 2)
)

}
\seealso{
\code{\link{generate_Mcol}}
}
