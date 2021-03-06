% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fold_funs.R
\name{fold_funs}
\alias{fold_funs}
\alias{folds_vfold}
\alias{folds_resubstitution}
\alias{folds_loo}
\alias{folds_montecarlo}
\alias{folds_bootstrap}
\alias{folds_rolling_origin}
\alias{folds_rolling_window}
\title{Cross-Validation Schemes}
\usage{
folds_vfold(n, V = 10)

folds_resubstitution(n)

folds_loo(n)

folds_montecarlo(n, V = 1000, pvalidation = 0.2)

folds_bootstrap(n, V = 1000)

folds_rolling_origin(n, first_window, validation_size, gap = 0, batch = 1)

folds_rolling_window(n, window_size, validation_size, gap = 0, batch = 1)
}
\arguments{
\item{n}{(integer) - number of observations.}

\item{V}{(integer) - number of folds.}

\item{pvalidation}{(double) - proportion of observation to be in validation fold.}

\item{first_window}{(integer) - number of observations in the first training
sample.}

\item{validation_size}{(integer) - number of points in the validation
samples; should be equal to the largest forecast horizon.}

\item{gap}{(integer) - number of points not included in the training or validation 
samples; Default is 0.}

\item{batch}{(integer) - Increases the number of time-points added to the training
set each CV iteration. Applicable for larger time-series. Default is 1.}

\item{window_size}{(integer) - number of observations in each training
sample.}
}
\value{
A list of Folds.
}
\description{
These functions represent different cross-validation schemes that can be used with origami.
They should be used as options for the \code{fold_fun} argument to the \code{\link{make_folds}} 
function in this package. \code{\link{make_folds}} will call the requested function specify \code{n}, 
based on its arguments, and pass any remaining arguments (e.g. \code{V} or \code{pvalidation}) on.
}
\seealso{
Other fold generation functions: \code{\link{fold_from_foldvec}},
  \code{\link{make_folds}},
  \code{\link{make_repeated_folds}}
}
