library(sf)
refdata_feature_class <- st_read("C:/Users/kjell/Desktop/ArcGIS/Projects/LIDARscHei/refdataR.shp")

# Attribute: 
# srbmo: biomasseOverjordisk: oberirdische trockene biomasse
# srtrean: treAntall    : Anzahl Bäume pro ha
# srgrflate: grunnflate : Gesamtfläche der bäume in einem gebiet
# srvolmb: volumMedBark : Volumen mit Rinde
# srlai : lai : Blattflächenindex
# srkronedek: kroneDekning: anteil der fläche die durch die vertikale projektion der baumkronen bedeckt wird
# srhoydea : hoydeAritmetisk: fehlt ?
# srhoydem : hoydeMiddel :
# srhoydeo: hoydeOver: durchschnittliche höhe der 100 größten bäume pro hektar

#Spalten entfernen
refdata_feature_class <- refdata_feature_class %>% 
  dplyr::select(-objtype,-srprosjekt,-prod_statu,
                -prod_navne,-prod_lokal,-prod_maale,
                -verifiseri,-førstedat,-prod_srmet,
                -prod_srfma,-komid,-srbonitet,
                -srbmu,-srbmu_l,-srbmu_s,-srbmu_u,
                -srvolub,-srvolub_l,-srvolub_s,-srvolub_u)
