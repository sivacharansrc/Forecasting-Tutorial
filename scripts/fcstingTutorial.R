#### PREPARING THE ENVIRONMENT #####

rm(list = ls())
options(scipen = 999)
library(fpp)
library(forecast)
library(dplyr)

######### READING SAMPLE DATA ##########

data <- read.csv("~/R Projects/Forecasting-Tutorial/dataSet/SampleData.csv", header = T)
tsdata <- data$tsValue
tsdata <- ts(tsdata, start = c(2010,9), end = c(2017,8), frequency = 12)


########### 2.1 GRAPHICS ########

load("~/R Projects/Forecasting-Tutorial/dataSet/melsyd.rda")

plot(melsyd[,"Economy.Class"], 
     main="Economy class passengers: Melbourne-Sydney",
     xlab="Year",ylab="Thousands")

## SAMPLE

plot(tsdata, main = "Sample TS Data", xlab="Year", ylab="Sample Value")

## SEASON PLOT FOR VIEWING THE DATA BY SEASON

seasonplot(tsdata,
           ylab="$ million",
           xlab="Year", 
           main="Seasonal Plot: Antidiabetic drug sales",
           year.labels=TRUE, year.labels.left=TRUE, col=1:20, pch=19)

## SAMPLE SEASON PLOT

seasonplot(tsdata,
     main = "Sample TS Data",
     xlab="Year",
     ylab="Sample Value",
     year.labels=TRUE, 
     year.labels.left=TRUE,
     col = 1:8,
     pch=8)

monthplot(a10,ylab="$ million",xlab="Month",xaxt="n",
          main="Seasonal deviation plot: antidiabetic drug sales")
axis(1,at=1:12,labels=month.abb,cex=0.8)

## SAMPLE MONTHPLOT

monthplot(tsdata)
