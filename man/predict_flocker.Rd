% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict_flocker.R
\name{predict_flocker}
\alias{predict_flocker}
\title{Get posterior predictions from a flocker model}
\usage{
predict_flocker(
  flocker_fit,
  n_iter = NULL,
  new_data = NULL,
  hist_condition = FALSE,
  mixed = FALSE,
  sample_new_levels = "uncertainty"
)
}
\arguments{
\item{flocker_fit}{A `flocker_fit` object}

\item{n_iter}{The number of posterior iterations desired. If `NULL`, use
all available posterior iterations.}

\item{new_data}{Optional new data at which to predict. If `NULL`, predictions
are given at the data points used for model fitting ("retrodictions")}

\item{hist_condition}{Logical indicator of whether to directly condition the 
posterior for the occupancy state on the observed detection histories.
For example, at sites with at least one detection, the true occupancy 
state conditioned on the history is one with absolute certainty. Without 
directly conditioning on the history, the occupancy state is controlled 
by the posterior distribution for the occupancy probability psi. Of 
course even without conditioning directly on the detection history, we 
still condition indirectly on the observed history via the fitted value 
of psi, which itself depends on all of the observed detection histories.}

\item{mixed}{When `new_data` is not provided, should random effect levels be
drawn from their posteriors (`FALSE`, the default) or re-sampled from 
their fitted hyperparameters (`TRUE`). The latter can be useful for mixed
predictive checking.}

\item{sample_new_levels}{If new_data is provided and contains random effect
levels not present in the original data, how should predictions be
handled? Passed directly to brms::prepare_predictions, which see.}
}
\value{
An array of posterior predictions. If the model is rep-varying, 
    then a 3-dimensional array where the first dimension is the closure-unit,
    the second dimension is the rep, the third dimension is the iteration, 
    and the value is 1, 0, or NA indicating detection, non-detection, or 
    non-existence of the sampling event.
    If the model is rep-constant, then a matrix where rows are iterations,
    columns are closure-units, and values are the number of successes.
}
\description{
Get posterior predictions from a flocker model
}
