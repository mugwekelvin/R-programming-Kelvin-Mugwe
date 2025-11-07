#Summaries in R
table(LungCapData)
# To know the number of observations
length(LungCapData)

table(LungCapData$Smoke)
#Creating a two way table
table(Smoke,Gender)
# Calculating Median 
median(LungCap)
#Calculating Variance
var(LungCap)
#Calculating Standard Deviation
sd(LungCap)
#Calculating Standard Deviation using Variance
sqrt(var(LungCap))
#Calculating the Minimum Value
min(LungCap)
#Calculating the Maximum Value
max(LungCap)
#Calculating the Range
range(LungCap)
#Finding the percentiles 
quantile(LungCap,probs=(0.25))
#Finding Two percentiles
quantile(LungCap,probs=c(0.25,0.75))
#Summing Observations
sum(LungCap)
#Calculating the Correlation and by default it using pearson coefficients
cor(LungCap,Age)
##Calculating Correlation using spearman
cor(LungCap,Age,method="spearman")

