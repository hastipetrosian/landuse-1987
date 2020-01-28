library(rgdal)
## this doesn't work? ("Cannot open data source")
## readOGR("Landuse1987.shp")


library(sf) 
dd <- read_sf("Landeuse1987.shp")
plot(dd)  ## basic plot

