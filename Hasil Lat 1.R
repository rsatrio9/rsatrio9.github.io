setwd('C:/Metopel/Latihan')
library('readxl')
library('tidyverse')

#baca data
dat<-read_excel('latihan1.xlsx')

#plot X dan Y
plot(dat$X,dat$Y,xlab = "Jam Belajar",ylab = "Nilai UAS")

#Regresi
reg1<-lm(Y~X,data = dat)
summary(reg1)

#Membuat error
dat$u<-resid(reg1)

#Plot error
plot(dat$Y,dat$u,xlab = "Nilai UAS",ylab = "error")