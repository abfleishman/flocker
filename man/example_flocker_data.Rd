% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/example_flocker_data.R
\name{example_flocker_data}
\alias{example_flocker_data}
\title{Create example data for use with \code{make_flocker_data()} and downstream functions.}
\usage{
example_flocker_data(rep_constant = FALSE, seed = 123)
}
\arguments{
\item{rep_constant}{logical: create data with unit covariates only (TRUE) 
or data that includes event covariates (FALSE)}

\item{seed}{random seed. To use existing RNG state set to NULL.}
}
\value{
A three element named list with the observation matrix ($obs), the
unit covariate dataframe ($unit_covs), and the event covariate list
($rep_covs). If rep_constant is TRUE, then $rep_covs will be NULL.
}
\description{
Create example data for use with \code{make_flocker_data()} and downstream functions.
}
