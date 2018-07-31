dataset<-read.csv(file="/home/samrat/SemIII/DMA/AmazonData.csv",head=TRUE,sep=",") # dataset import
View(dataset)
dim(dataset)
summary(dataset)
head(dataset)
head(dataset$reviews.rating)
hist(dataset$reviews.rating)
unique(dataset$name)
dataset$name[which(dataset$name=="Kindle Paperwhite" )]
subset(dataset,dataset$name=="Kindle Paperwhite",dataset$reviews.rating)
