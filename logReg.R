dataset<-read.csv(file="/home/samrat/SemIII/DMA/Pima.te.csv",head=TRUE,sep=",") # diabetes dataset import
View(dataset)
library(caTools)  # for splitting into training and testing datasets

# splitting on sample data
split<-sample.split(dataset,SplitRatio = 0.8)
split

training<-subset(dataset,split=="TRUE")
testing<-subset(dataset,split=="FALSE")
training
testing

# model creation
model<-glm(type~.,training,family = "binomial")
summary(model)

# optimizing the model
#model<-glm(type~.-age,training,family = "binomial")
#summary(model) # Therefore age is significant

#model<-glm(type~.-bp,training,family = "binomial")
#summary(model) # Therefore bp is significant

#model<-glm(type~.-npreg,training,family = "binomial")
#summary(model) # Therefore npreg is significant

model<-glm(type~.-skin,training,family = "binomial")
summary(model) # Therefore skin is not significant

# predict values in model
res<-predict(model,testing,type="response")
res
testing

# Accuracy of the model by creating a confusion matrix
table(ActualValue=testing$type,PredictedValue=res>0.5)
AccuracyPercentage=(41+16)/(41+16+9+8)
AccuracyPercentage

# Threshold prediction
res<-predict(model,training,type="response")
library(ROCR)

ROCRPred<-prediction(res,training$type)
ROCRPref<-performance(ROCRPred,"tpr","fpr") # true positive rate and false positive rate

plot(ROCRPref,colorize=TRUE,print.cutoffs.at=seq(0,1,by=0.1))

# Updating value of threshold
res<-predict(model,testing,type="response")
table(ActualValue=testing$type,PredictedValue=res>0.5)
table(ActualValue=testing$type,PredictedValue=res>0.2)
AccuracyPercentage=(32+24)/(32+24+1+17)
AccuracyPercentage