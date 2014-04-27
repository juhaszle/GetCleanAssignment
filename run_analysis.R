## datafiles unzipped to working directory
# reading subject/x/y training and test data to dataframes 
xte=read.table("test/X_test.txt")
ste=read.table("test/subject_test.txt")
yte=read.table("test/y_test.txt")
xtr=read.table("train/X_train.txt")
str=read.table("train/subject_train.txt")
ytr=read.table("train/y_train.txt")
# merging test and training data (subject/x/y separatelly)
stt=rbind(str,ste)
xtt=rbind(xtr,xte)
ytt=rbind(ytr,yte)
# reading featurenames
namesTable= read.table("features.txt")
namesVect=as.vector(namesTable[,2])
# naming x, y, and subject frame colums
names(xtt)=namesVect
names(ytt)="activity"
names(stt)="subject"
# labelling y ("activity") values and setting as factor
al=read.table("activity_labels.txt")
ylevels=as.vector(al[,1])
ylabels=as.vector(al[,2])
ytt[,1]=factor(ytt[,1], levels=ylevels, labels=ylabels)
#merging all colums
datatotal=cbind(stt, xtt, ytt)
# selecting names containing "mean()" or "std()"
index=  grepl("mean\\(\\)|std()", x=namesVect )
## subsetting x data
data1=datatotal[, 2:(dim(datatotal)[2]-1)]
## subsetting x data colums with names containing "mean()" or "std()"
data2=data1[index]
# making x colums names more tidy
# changing mean() -> Mean, std()-> Std
# diccarding -
# changing f -> freq, t -> time
namesVect2=names(data2)
namesVect2=sub("mean\\(\\)", "Mean", namesVect2)
namesVect2=sub("std\\(\\)", "Std", namesVect2)
namesVect2=gsub("-", "", namesVect2)
namesVect2=sub("^f", "freq", namesVect2)
namesVect2=sub("^t", "time", namesVect2)
names(data2)=namesVect2
# remerging subject, new x, and activity colums
data=cbind(datatotal["subject"], data2, datatotal["activity"])
# creating a second, independent tidy data set with the average of each 
# variable for each activity and each subject. 
aggdata=aggregate(data[,2:(dim(data)[2]-1)], by=list(subject=data$subject, activity=data$activity), mean)
# writing aggregated data (aggdata) to a file
write.table(aggdata, file="aggregatedData.txt")
#