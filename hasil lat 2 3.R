setwd('C:/Metopel/Latihan')

library('readxl')
library('tidyverse')
library('kableExtra')

dat<-read_excel('latihan2.xlsx')

plot(dat$X,dat$Y,xlab = "Jam belajar",ylab = "Nilai UAS Metopel" )
abline(lm(dat$Y~dat$X))

kbl(dat) %>%
  kable_styling(bootstrap_options = c("stripped","hover","responsive"))

reg1<-lm(data = dat,Y~X)
summary(reg1)

reg2<-lm(data = dat,Y~X+S)
summary(reg2)

dat2<-read_excel('latihan3.xlsx')

kbl(dat2) %>%
  kable_styling(bootstrap_options = c("stripped","hover","responsive"))

reg3<-lm(data = dat2,Y~X+S)
summary(reg3)

dat2$SS<-ifelse(dat2$S=="sakit",1,0)
reg4<-lm(data = dat2,Y~X+SS)
summary(reg4)

