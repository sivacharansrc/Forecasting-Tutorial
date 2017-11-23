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

## SCATTER PLOT - TO FIND RELATION SHIP BETWEEN VARIABLES.
# THIS CAN ALSO BE USED TO FIND THE STRENGTH OF THE RELATIONSHIP B/W A PREDICTOR VARIABLE AND PREDICTED VARIABLE

plot(fuel[,5], fuel[,8], xlab="City mpg", ylab="Carbon footprint")

# USE JITTER TO AVOID OVERLAPPING OF DATA

plot(jitter(fuel[,5]), jitter(fuel[,8]), xlab="City mpg", ylab="Carbon footprint")

## SCATTER PLOT MATRICES CAN ALSO BE USED WHERE THERE ARE MORE THAN ONE VARIABLE FOR WHICH THE SCATTER PLOT HAS TO BE FOUND

pairs(fuel[,-c(1:2,4,7)], pch=10)

# NOTE THAT SCATTER PLOT MAKE MORE SENSE TO BE USED WITH CONTINUOUS VARIABLES

###################### NUMERICAL SUMMARIES #############################
# PERCENTILES ARE USEFUL IN DESCRIBING THE DISTRIBUTION OF THE DATA

quantile(fuel$Carbon, probs = .1)
fuel$Carbon
IQR(fuel$Carbon)

quantile(fuel$Carbon, probs = .75) - quantile(fuel$Carbon, probs = .25)
sd(fuel$Carbon)

###### AUTOCORRELATION

# ACF ARE USED IN TIME SERIES FOR FINDING THE RELATION BETWEEN LAG T, and LAG K

lag.plot(tsdata, lags = 12, pch=19, do.lines = F)
