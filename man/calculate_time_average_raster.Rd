% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_time_average_raster.R
\name{calculate_time_average_raster}
\alias{calculate_time_average_raster}
\title{Calculate time averages from raster}
\usage{
calculate_time_average_raster(raster.path, ext = extent(-11.5, 15.1, 45.8,
  61.1), time.format, time.period)
}
\arguments{
\item{raster.path}{is the full path to the raster file with a pattern ".grd".}

\item{ext}{is the extent in lon lat}

\item{time.format}{extracts the date out of the file name}

\item{time.period}{averages over months, years, the whole period or yearmonths. Input includes: "month", "yearmonth","whole period".}
}
\description{
Calculate time average raster
}
\details{
\code{calculate_time_average_raster} uses raster and rts to calculate time averages for an extent. Stacking the raster files 
doesn't load everything into memory. Note that for large files stackApply can consume a long time.
}
