% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getMeasurementTypes.R
\name{getMeasurementTypes}
\alias{getMeasurementTypes}
\title{Get Measurement Types}
\usage{
getMeasurementTypes(measurementType = NULL)
}
\arguments{
\item{measurementType}{If \code{NULL} (default), then all measurement types are
returned. Can also be 'numeric' or 'character' (or a list of either type)
and will filter by Id and Name respectivly in the resulting data.frame.}
}
\value{
A dataframe of measurement types giving their Id and Name
}
\description{
Retrieves a \code{data.frame} of measurement types available from YouTheria.
}
\examples{
\dontrun{
# Get a dataframe of all measurement types
AllMT <- getMeasurementTypes()

# Seach by name
BM_MT <- getMeasurementTypes('Body Mass')
BM_LL_MT <- getMeasurementTypes(c('Body Mass','Limb Length'))

# Search by ID
MT1 <- getMeasurementTypes(1)
MT123 <- getMeasurementTypes(1:3)
}
}

