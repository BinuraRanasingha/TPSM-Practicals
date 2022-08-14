getwd()
setwd("D:/Binura/SLIIT/3rd year 1st sem/Theory and Practices in Statistical Modelling/Tutorials and labsheets")
D<-read.table("TestData1.txt",header=TRUE)
X<-D[,2:10]
Y<-D[,1]

D[D[,4]>38,]
D[D$X3>38]

D[D[,9]>2000,]
D2000<-D[D$x8>2000,]

attach(D)
plot(x1,y,main="Scatter Plot of Y and x1")
hist(x2,main="Histogram of x2")
detach(D)

Dcsv<-read.csv("TestData2.csv")
data<-read.table(file.choose())
data<-read.csv(file.choose())

library(readxl)
D<-read_excel("Dtest.xlsx")
read_excel("Dtest.xlsx",sheet="data")

I<-read.delim("Infants.txt",header=TRUE,sep="\t",dec=".")
?read.table
df<-read.table("Infants.txt",colClasses = c(rep("character",1),rep("NULL",8)),header=TRUE)
df
attach(df)
mytable<-table(Ethnic)
mytable
pie(mytable)

pcnt<-round(mytable*100/sum(mytable))
pcnt
lbls<-paste(names(mytable),'\n',pcnt,"%")
lbls
pie(mytable,label=lbls)

library(plotrix)
pie3D(mytable,labels=lbls,explode=0.2)

barplot(mytable,main="Ethnicity Distribution", ylab="number of Infants", xlab="Ethnicity")
barplot(mytable,main="Ethnicity Distribution", ylab="number of Infants", xlab="Ethnicity",horiz=TRUE)

avb<-read.table("Infants.txt",header=TRUE)
summary(avb)
boxplot(avb$BthWeight~avb$Smoke)

avb<-read.table("Infants.txt",header=TRUE)
hist(avb$Age,density=10)

mytable1<-table(avb$Ethnic,avb$BreastFed)
barplot(t(mytable1),main="Ethnicity and Breast Fed",ylab="number of Infants",xlab="Ethnicity",legend=colnames(mytable1))

barplot(t(mytable1),main="Ethnicity and Breast Fed",ylab="number of Infants",xlab="Ethnicity",legend=colnames(mytable1),beside=TRUE)

plot(avb$BthLength,avb$BthWeight,pch=3)

attach(avb)
pairs(~Age+PreWeight+DelWeight+BthWeight+BthLength,data=avb,main="Scatter Plots")

table(Smoke,Ethnic)

tapply(Age,Smoke,mean)

tapply(Age,list(Smoke,Ethnic),mean)

tapply(Age,list(Smoke,Ethnic),function(x)sqrt(var(x)/length(x)))

tbl1<-table(Ethnic,Smoke)
prop.table(tbl1,1)
prop.table(tbl1,2)





