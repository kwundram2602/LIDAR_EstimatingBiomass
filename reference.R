library(sf)
refdata_feature_class <- st_read("C:/Users/kjell/Desktop/ArcGIS/Projects/LIDARscHei/refdataR.shp")

#Spalten entfernen
refdata_feature_class <- refdata_feature_class %>% 
  dplyr::select(-objtype)
