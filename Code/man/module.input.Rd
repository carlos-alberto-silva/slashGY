% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.input.r
\name{module.input}
\alias{module.input}
\title{Module of input tree- or stand-level data to prepare it for further simulations.}
\usage{
module.input(TYPE = "PLOT", TREEDATA = NA, AREA = NA, SI = NA,
  HDOM0 = NA, AGE0 = NA, BA0 = NA, N0 = NA, AGEF = 50,
  PFERT = FALSE, BEDDED = FALSE, HERB = FALSE, BURN = FALSE,
  TYPEFERT = "NA", AGEFERT = NA, SOIL = "NA", THINNING = FALSE,
  AGET = NA, NT = NA, t = 1, d = 1.95, method = 2)
}
\arguments{
\item{TYPE}{Character for type of input data. PLOT: stand-level data information, TREE: tree-level information. Default is PLOT}

\item{TREEDATA}{Data frame with tree-level information with columns: PLOTID, TREEID, DBH, HT (these should be identical names).}

\item{AREA}{Numeric value of size of the inventory plot (ft2). Required for TYPE='TREE'.}

\item{SI}{Numeric value of Site Index (ft) (Dominant Height of the plot at age 50 years).}

\item{HDOM0}{Numeric value of Dominant Height (ft) at initial age (or age 0).}

\item{AGE0}{Numeric value of initial stand age or age 0 (years).}

\item{BA0}{Numeric value of Basal Area (ft2/ha) at age 0 (required for model projection).}

\item{N0}{Numeric value of number of trees per hectare at age 0.}

\item{AGEF}{Numeric value of final stand age (in years) of simulation. Default is 50.}

\item{PFERT}{If TRUE then fertilized at planting. Default is FALSE.}

\item{BEDDED}{If TRUE then bedded (site preparation). Default is FALSE.}

\item{HERB}{If TRUE then herbicide was used. Default is FALSE.}

\item{BURN}{If TRUE then burned was used. Default is FALSE.}

\item{TYPEFERT}{Type of fertilization at AGEFERT. N: only Nitrogen. NP: N and P. Default is NA.}

\item{AGEFERT}{Numeric value of stand age (in years) where fertilization is planned. Required if definied TYPEFERT.}

\item{SOIL}{Type of Soil. C: Group C. D: Group D. Default is NA.}

\item{THINNING}{If TRUE then a thinning is implemented according to AGET and NT. Default is FALSE.}

\item{AGET}{Numeric value of stand age (in years) where thinning is planned.}

\item{NT}{Numeric value of trees to be removed when thinning at age AGET.}

\item{t}{Numeric value top stem diameter outside bark for merchantability limit (in).}

\item{d}{Numeric value of a DBH threshold limit for merchantable trees (in).}

\item{method}{Numeric value that identifies the method to estimate missing heights from TYPE='TREE'.
1: parametrized DBH-height model that requires DBH, BA and AGE, 2: fits a simple DBH-height model from
available measurements using the equation: ln(Ht) = b0 + b1/DBH. Default method=2.}
}
\value{
A list containing the following:
\itemize{
\item \code{SI}       Site Index (ft).
\item \code{AGE0}     Initial stand age or age 0 (years).
\item \code{HDOM0}    Dominant Height (ft) at initial age (or age 0).
\item \code{BA0}      Basal Area (ft2/ha) at age 0.
\item \code{N0}       Number of trees per hectare at age 0.
\item \code{QD}       Mean quadratic diameter (in) at age 0.
\item \code{SDIR0}    Relative stand density index (\%) at age 0.
\item \code{VOL_OB0}  Total stand-level volume outside bark (ft3/ha) at age 0.
\item \code{VOL_IB0}  Total stand-level volume inside bark (ft3/ha) at age 0.
\item \code{VOLm_OB0} Merchantable stand-level volume outside bark (ft3/ha) at age 0.
\item \code{VOLm_IB0} Merchantable stand-level volume inside bark (ft3/ha) at age 0.
\item \code{AGEF}     Final stand age (in years) of simulation.
\item \code{Z1}       Dummy variable if fertilized at planting then Z1 = 1.
\item \code{Z2}       Dummy variable if bedded (site preparation) then Z2 = 1.
\item \code{Z3}       Dummy variable if herbicide was used then Z3 = 1.
\item \code{ZB}       Dummy variable if burned was used then ZB = 1.
\item \code{T1}       Dummy variable if only Nitrogen fertilization at AGEFERT then T1 = 1.
\item \code{T2}       Dummy variable if N and P fertilization at AGEFERT then T2 = 1.
\item \code{AGEFERT}  Numeric value of stand age (in years) where fertilization is planned.
\item \code{S1}       Dummy variable if soil is Goup C then S1 = 1.
\item \code{S2}       Dummy variable if soil is Goup D then S2 = 1.
\item \code{THINNING} Logical that indicates if thinning is implemented according to AGET and NT.
\item \code{AGET}     Stand age (in years) where thinning is planned.
\item \code{NT}       Number of trees to be removed when thinning at age AGET.
\item \code{t}        Top stem diameter outside bark for merchantability limit (in).
\item \code{d}        DBH threshold limit for merchantable trees (in).
\item \code{method}   Selection of the method to estimate missing heights from TYPE='TREE'.
}
}
\description{
\code{module.input} Prepares tree- or stand-level data from a single plot, checks and completes missing values, and
calculates several stand-level parameters including total volume. It also reads required information for further
simulations including simulation age and details of future thinning. Some information is only traspassed to other modules.
Note that form tree-level data individual tree (complete or incomplete) information is required.
}
\examples{
# Example 1 - Input stand-level data
module.input(TYPE='PLOT', BA0=93, SI=70, AGE0=18, N0=282, AGEF=19)
module.input(TYPE='PLOT', BA0=93, HDOM0=54, AGE0=18, N0=282, AGEF=19)
module.input(TYPE='PLOT', HDOM0=54, AGE0=18, N0=282, AGEF=19) # BA obtained by prediction

# Example 2 - Input with individual tree data
treedata <- subset(treedata, is.na(DBH)==FALSE)
module.input(TYPE='TREE', TREEDATA=treedata, AREA=3240, AGE0=5, AGEF=21)
}
\author{
Priscila Someda-Dias, Salvador A. Gezan
}
