#### PREPARING THE ENVIRONMENT #####

rm(list = ls())
options(scipen = 999)
library(fpp)
library(forecast)

########### 2.1 GRAPHICS ########

load("~/R Projects/Forecasting-Tutorial/dataSet/melsyd.rda")

plot(melsyd[,"Economy.Class"], 
     main="Economy class passengers: Melbourne-Sydney",
     xlab="Year",ylab="Thousands")

melsyd
