#https://www.who.int/ipcs/publications/ehc/en/224_As_Part_2.pdf?ua=1
#Natural levels range from 1-40mg/kg
#Data source https://pubs.usgs.gov/ds/801/
soil<-read.delim("C://Users/Adrian/Downloads/Appendix_2b_Top5_18Sept2013.txt")
sub_soil<-soil[14:length(soil[,1]),]
colnames(sub_soil)<-soil[12,]
library(ggplot2)
library(ggmap)
library(tidyr)
library(corrplot)
sub_soil[sub_soil=='N.S.']<-NA
separate(as.numeric(sub_soil$Top5_As), into=c('del','Top5_As'), sep='>')
soil_plot <- get_stamenmap(bbox = c(left = as.numeric(min(sub_soil$Longitude))-100, bottom = as.numeric(min(sub_soil$Latitude))+18, 
                                   right = as.numeric(max(sub_soil$Longitude))+.5, top = as.numeric(max(sub_soil$Latitude))+.5), 
                          zoom = 7)
soil_plot <- get_stamenmap(bbox = c(left = -127, bottom = 25.9, 
                                    right = -66, top = 49.5), 
                           zoom = 7)

soil_plot_lowres <- get_stamenmap(bbox = c(left = -127, bottom = 24.5, 
                                    right = -66, top = 49.5), 
                           zoom = 4)


plot_points<-
  ggmap(soil_plot) +
  geom_point(data = sub_soil, aes(x = as.numeric(Longitude), y = as.numeric(Latitude)),
             colour = "black", size = .6)+
  ggtitle("USGS 0-5cm Soil Samples")

boxplot(as.numeric(sub_soil$Top5_As),ylab="As mg/kg")
hist(as.numeric(sub_soil$Top5_As),ylab="As mg/kg")
summary(as.numeric(sub_soil$Top5_As))
As_high<-sub_soil[(as.numeric(sub_soil$Top5_As))>40,]
As_high<-As_high[complete.cases(As_high),]
hist(as.numeric(As_high$Top5_As),main = "")
plot_1<-
  ggmap(soil_plot) +
  geom_point(data = As_high, aes(x = as.numeric(Longitude), y = as.numeric(Latitude),size = as.numeric(Top5_As)), color="red") +
  ggtitle("USGS 0-5cm Soil Samples")
plot_2<-
  ggmap(soil_plot) +
  geom_point(data = sub_soil, aes(x = as.numeric(Longitude), y = as.numeric(Latitude),color = LandCover1)) +
  geom_point(data = As_high, aes(x = as.numeric(Longitude), y = as.numeric(Latitude),size = as.numeric(Top5_As)),color="red") +
  ggtitle("USGS 0-5cm Soil Samples")
plot_3<-
  ggmap(soil_plot) +
  geom_point(data = sub_soil, aes(x = as.numeric(Longitude), y = as.numeric(Latitude),
                                  color = LandCover2), size=3) +
  geom_point(data = As_high, aes(x = as.numeric(Longitude), y = as.numeric(Latitude),size = as.numeric(Top5_As)),color="red") +
  ggtitle("USGS 0-5cm Soil Samples")



