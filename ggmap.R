#load ggmap and ggplot2

#ggmap
  myLocation<- "University of Washington"

#lat/long
  myLocation<-c(lon=73.85674,lat=18.52043)
  
myMap<-get_map(location = myLocation,source ="google",maptype ="roadmap",crop=FALSE)
myMap<-get_map(location = myLocation,source = "osm")
myMap<-get_map(location = myLocation,source = "stamen",maptype ="watercolor",crop=FALSE)

ggmap(myMap)
myLocation<-c(lon=72.8777,lat=19.07598)

geocode("Mumbai")
myLocation<-c(lon=72.87766,lat=19.07598)
geocode("Navi Mumbai")
myLocation<-c(lon=73.02966,lat=19.03305)
geocode("SICSR")
myLocation<-c(lon=73.8337,lat=18.53336)

ggmap(myMap)+geom_point(aes(x=lon,y=lat,size=1),alpha=.5,color="red")+scale_size(range=c(3,20))
# ulwe 18.9726° N, 73.0284° E
myLocation<-c(lon=18.9726,lat=73.0284)

hdf <- get_map("houston, texas")
ggmap(hdf, extent = "normal")
ggmap(hdf) # extent = "panel", note qmap defaults to extent = "device"
ggmap(hdf, extent = "device")
ggmap(hdf)

#results 
#http://rpubs.com/sherin/397077

myMap<-get_map(location = myLocation,source ="google",maptype ="hybrid",crop=FALSE)
myMap<-get_map(location = myLocation,source ="stamen",maptype ="toner",crop=FALSE)



