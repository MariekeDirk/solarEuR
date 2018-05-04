library(data.table)
library(raster)
main_dir<-"/nobackup/users/dirksen/data/radiation_europe/"

#Ensembles data and metadata 
ensembles_meta<-fread(paste0(main_dir,"stations/ensembles_qq_stations"),nrows = 102)
ensembles_meta<-ensembles_meta[,2:9]
names(ensembles_meta)<-c("STATION","STATION NAME","COUNTRY NAME","LAT","LON","ELEV","START","STOP")

devtools::use_data(ensembles_meta,overwrite = TRUE)

ensembles<-fread(paste0(main_dir,"stations/ensembles_qq"))
ensembles<-subset(ensembles,select=which(names(ensembles)!="|"))

devtools::use_data(ensembles,overwrite = TRUE)

#Synops data and metadat
synops_meta<-fread(paste0(main_dir,"stations/synops_qq_stations"),nrow=598)
synops_meta<-synops_meta[,2:9]
names(synops_meta)<-c("STATION","STATION NAME","COUNTRY NAME","LAT","LON","ELEV","START","STOP")

devtools::use_data(synops_meta,overwrite = TRUE)

synops<-fread(paste0(main_dir,"stations/synops_qq"))
synops<-subset(synops,select=which(names(synops)!="|"))

devtools::use_data(synops,overwrite = TRUE)

#solar radiation data
sarah.example<-list.files("/nobackup/users/dirksen/data/SARAH_raster/",pattern=".grd",full.names = TRUE)[5000]
sarah.grid<-stack(sarah.example)
names(sarah.grid)<-"Irr"

devtools::use_data(sarah.grid,overwrite = TRUE)


