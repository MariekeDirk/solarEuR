#' Metadata from the ensembles dataset
#' 
#' @references \url{https://www.ecad.eu/}
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
#' @references \url{https://www.ecad.eu/}
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
#' @references \url{https://www.ecad.eu/}
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
#' @references \url{https://www.ecad.eu/}
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


#'SARAH solar irradiance dataset
#'
#'
#'An example of the gridded SARAH dataset for 1997-02-02. The data is rasterized from the original netcdf files. 
#'The data projection is WGS84. The extent of the data is +/-65 latitude and +/-65 longitude.  
#'
#'The countries dataset can be used to subset SARAH for a specific region within these bounds. 
#'
#'@references \url{https://wui.cmsaf.eu/safira/action/viewDoiDetails?acronym=SARAH_V002}
#'
#'
#'@examples
#'library(raster)
#'data(countries)
#'data(sarah.grid)
#'data(ensembles_meta)
#'WGS84<-CRS("+init=epsg:4326")
#'
#'obs.sweden<-ensembles_meta[which(ensembles_meta$`COUNTRY NAME`=="SWEDEN"),]
#'obs.sweden<-data.frame(obs.sweden)
#'coordinates(obs.sweden)<-~LON+LAT
#'proj4string(obs.sweden)<-WGS84
#'
#'fun <- function() {
#'plot(countries,add=TRUE)
#'plot(obs.sweden,add=TRUE)
#'}
#'
#'plot(sarah.grid,addfun=fun)
#'
#'sweden<-subset(countries,GEOUNIT %in% c("Sweden"))
#'sarah.sub<-crop(sarah.grid,sweden)
#'sarah.sub<-mask(sarah.sub,sweden)
#'
#'
#'
#'plot(sarah.sub,addfun=fun) #the sarah dataset misses the northern part of Sweden, not shown in the plot
#'
#'
#'@slot Irr Solar irradiance in W/m2
"sarah.grid"

#'Natural earth country data
#'
#'This dataset contains polygons of all the countries at a resolution of 10m. 
#'
#'@references \url{http://www.naturalearthdata.com/}
#'
#'@examples
#'data(countries)
#'names(countries)
#'
#'two.countries<-subset(countries,GEOUNIT %in% c("Sweden","Denmark")) #Get the polygon of Sweden and Denmark
#'plot(two.countries)
#'
#'eu.countries<-subset(countries,CONTINENT %in% "Europe") #get the full european continent 
"countries"