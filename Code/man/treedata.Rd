% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treedata.R
\docType{data}
\name{treedata}
\alias{treedata}
\title{Data from inventory at tree-level to test}
\format{A data frame with 60 observations and 5 variables:
\describe{
\itemize{
\item \code{PLOTID} Unique plot identification. For a single plot, all trees should have the same PLOTID.
\item \code{TREEID} Unique tree identification.
\item \code{DBH} Diameter at breast height (DBH, inches). Must have the same size and order as TREEID.
\item \code{HT} Total height (feet). Must be of the same size and order as TREEID.
\item \code{OBS} Aditional information about the tree.
}
}}
\source{
\url{http://www.sfrc.ufl.edu/CFGRP/}
}
\usage{
treedata
}
\description{
A dataset containing the measurements at tree-level of 60 trees in the same plot.
The age of meadurement is 5 years and plot area is 3240 square meters.
}
\keyword{datasets}
