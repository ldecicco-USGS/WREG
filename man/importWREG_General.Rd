% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importWREG_General.R
\name{importWREG_General}
\alias{importWREG_General}
\title{Import Data from Generic (v1.06) Files}
\usage{
importWREG_General(wregPath)
}
\arguments{
\item{wregPath}{A directory that contains all of the files needed to implement
the MatLab version of WREG.}
}
\value{
All outputs are returned as part of a list.  The list includes: 
 \item{sites}{A vector of site IDs.} \item{Y}{A data frame whose comlumns
 represent unique frequency events, while the row represent particular sites
 in the same order as \code{sites}.} \item{X}{A data frame whose columns
 represent basin characteristics to be used as dependent variables and whose
 rows represent sites corresponding to \code{sites}.} \item{LP3f}{A matrix
 containing the fitted LP# parameters that are fixed across exceedence
 probability.  These include the standard deviation, skew and regional skew
 for each site.} \item{LP3k}{A matrix of the fitted kappa parameters of the
 LP3 distribution for each \code{AEP}.} \item{BasChars}{A matrix containing
 the site IDs, latitudes and longitudes.} \item{recLen}{A square matrix
 indicating the number of overlapping years for each site pair.} 
 \item{recCor}{A matrix of the correlaiton between site paris.} \item{UW}{A
 matrix of user weights, if included.}
}
\description{
The \code{importWREG_General} function reads the WREG inputs from
a directory set up with new generic file formats.
}
\details{
This function allows users to use a more streamlined data format: 
 only two or three files are required.  This includes the 
 \dQuote{SiteInfo.txt}, \dQuote{USGSAnnualTimeSeries.txt}, and, optionally, 
 \dQuote{UserWLS.txt}.  The \dQuote{SiteInfo.txt} file should contain the
 following columns (with headers in parentheses): the station identification
 number (stationID), the latitude and longitude of the stations (latitude and
 longitude), the regional skew computed for each site (regionalSkew), the 
 at-site skew value (skew), the standard deviation of the Log-Pearson 
 Type-III distribution used to fit the series (standardDeviation), a series 
 of streamflow characteristics to be evaluated (Q#, where # indicates a 
 specific return period), Q#.k (the characteristic-specific kappa value from 
 the fitted Log-Pearson Type-III distribution, where again # specifies a 
 certain return period), and any explanatory variables to be used for 
 analysis.  The \dQuote{USGSAnnualTimeSeries.txt} and \dQuote{UserWLS.txt}
 files follow the format outlined in USGS Techniques and Methods 4-A8.
}
\examples{
wregDir <- file.path(system.file("exampleDirectory", package = "WREG"),
 "generalImport")
importedData <- importWREG_General(wregPath = wregDir)

}
