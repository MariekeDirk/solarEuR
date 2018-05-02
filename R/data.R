#' Metadata from the ensembles dataset
#' 
#' 
#' 
#' @format A data frame with 102 rows and 8 variables:
#' \describe{
#'  \item{STATION}{stations code}
#'  \item{STATION NAME}{Name of the station}
#'  \item{COUNTRY NAME}{Country were the station is located}
#'  \item{LAT}{Latitude in WGS84}
#'  \item{LON}{Longitude in WGS84}
#'  \item{ELEV}{Elevation of the station in meters}
#'  \item{START}{Start time of the measurements}
#'  \item{STOP}{Closing date of the station or latest measurement in the dataset}
#' }
"ensembles_meta"

#' Metadata from the ensembles dataset
#' 
#' 
#' 
#' @format A data frame with 598 rows and 8 variables:
#' \describe{
#'  \item{STATION}{stations code}
#'  \item{STATION NAME}{Name of the station}
#'  \item{COUNTRY NAME}{Country were the station is located}
#'  \item{LAT}{Latitude in WGS84}
#'  \item{LON}{Longitude in WGS84}
#'  \item{ELEV}{Elevation of the station in meters}
#'  \item{START}{Start time of the measurements}
#'  \item{STOP}{Closing date of the station or latest measurement in the dataset}
#' }
"synops_meta"

#' Radiationdata from the ECA database
#' 
#' 
#' 
#' @format A data frame with 900390 rows and 6 variables:
#' \describe{
#'  \item{STATION}{stations code similar to the STATION in *_qq_stations files}
#'  \item{DATEFIELD}{format YYYYMMDD}
#'  \item{PARAM}{field not in use}
#'  \item{VALUE}{y-coordinates of the station in the Dutch RD-coordinate system}
#'  \item{QC}{Globale Radiation in J/m^2 (W/m^2 for Zweden)}
#'  \item{SOURCE}{same as STATION because there is no blending for radiation.}
#' }
"ensembles"

#' Radiation data from the synoptic stations
#' 
#' 
#' 
#' @format A data frame with 353119 rows and 6 variables:
#' \describe{
#'  \item{STATION}{stations code similar to the STATION in *_qq_stations files}
#'  \item{DATEFIELD}{format YYYYMMDD}
#'  \item{PARAM}{field not in use}
#'  \item{VALUE}{y-coordinates of the station in the Dutch RD-coordinate system}
#'  \item{QC}{Globale Radiation in J/m^2 (W/m^2 for Zweden)}
#'  \item{SOURCE}{same as STATION because there is no blending for radiation.}
#' }
"synops"