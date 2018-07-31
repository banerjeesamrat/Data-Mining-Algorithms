trans<-read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/blood-transfusion/transfusion.data",header=T,sep = ",")
View(trans)
head(trans)
summary(trans)
dim(trans)
colnames(trans)<-c("Recency","Frequency","Monetay","Time","DonatedMarch2007")
# R (Recency - months since last donation),
# F (Frequency - total number of donation),
# M (Monetary - total blood donated in c.c.),
# T (Time - months since first donation), and
# a binary variable representing whether he/she donated blood in March 2007 (1 stand for donating blood; 0 stands for not donating blood).
View(trans)
head(trans,10)
colnames(trans)<-c("MonthsAfterDonation","TotalNumOfDonations","VolumeofBlood","MonthsSince1stDonation","DonatedMarch2007")
num<-length(which(trans$MonthsAfterDonation>3))
trans$MonthsAfterDonation[which(trans$MonthsAfterDonation>3)]
percentage<-(num/nrow(trans))*100
percentage
hist(trans$TotalNumOfDonations)