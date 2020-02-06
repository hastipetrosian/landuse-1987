library(rgdal)
## this doesn't work? ("Cannot open data source")
## readOGR("Landuse1987.shp")


library(sf) 
dd <- read_sf("Landeuse1987.shp")
plot(dd)  ## basic plot


## help(package="sf")

library(readxl)
library(tidyverse)
make_number <- function(x) {
  as.numeric(stringr::str_replace(x,"/","."))
}
(read_excel("tmp.xlsx")
    ## convert Farsi numbers to Western ...
    %>% mutate_at("some data",make_number)
)
