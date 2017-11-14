# Forecasting-Tutorial
This repository for Forecasting Tutorial using Rob Hyndmann's source

This project has all the codes that will be described in Rob Hyndmann's tutorial available at https://www.otexts.org/fpp/1/1

QUESTIONS TO BE ASKED BEFORE FORECASTING:

- Are there consistent patterns?
- Is there a significant trend?
- Is seasonality important?
- Are there any outliers in the data that needs expertise's knowledge?

CHOOSING AND FITTING MODELS:

- Always run different models to predict the forecast, and choose a best model out of the predicted models. Severl tests are available to measure the error's, minimize the errors that will be discussed eventually.

## 2.1 GRAPHICS:

```R
load("~/R Projects/Forecasting-Tutorial/dataSet/melsyd.rda")

plot(melsyd[,"Economy.Class"], 
     main="Economy class passengers: Melbourne-Sydney",
     xlab="Year",ylab="Thousands")

```

Looking at the plot for the Economy class, the following are evident at a first glance:

- No passengers have travelled during part of the period in 1989 - This is due to some industrial dispute (SME input)

- A period of reduced load in 1992

- A large increase in passenge load in end of 1991

- There are some large dips at the start of each year (holiday season)

- Long term flucutations: increasing in 1987, then decreasing in 1989, then again increasing through 1991, 1992

All the above observations should be accounted when building a model

A simpler time series data is available below:

```R

load("~/R Projects/Forecasting-Tutorial/dataSet/a10.rda")

plot(a10,
ylab="$ million",
xlab="Year", 
main="Antidiabetic drug sales")

```

The above graph of Antibiotic drug sales shows the following characteristics:

- Clear increasing trend

- seasonal pattern exists that increases as the level of the series increases

- A dip at the end of each year (due to govt subsidization as provided by SME)

Any model used to predict the antibiotic sales should take in to account on the seasonality, and the slow but steady raising trend.

## SEASONAL PLOT

```R

load("~/R Projects/Forecasting-Tutorial/dataSet/a10.rda")

seasonplot(a10,
ylab="$ million",
xlab="Year", 
main="Antidiabetic drug sales")

```






     
