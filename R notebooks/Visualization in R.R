library(sf)
library(RColorBrewer)

# Load data
nc <- st_read(system.file("shape/nc.shp", package="sf"))

# Plotting simple features (sf) with plot
plot(nc["AREA"], main = "AREA", breaks = "quantile",
     nbreaks = 9, pal = brewer.pal(9, "YlOrRd"))


install.packages('leaflet')
