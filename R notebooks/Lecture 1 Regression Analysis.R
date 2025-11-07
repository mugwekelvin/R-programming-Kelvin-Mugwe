Observation_Number <- c(1:20)
Hydrocarbon_Level <- c(0.99,1.02,1.15,1.29,1.46,1.36,0.87,1.23,1.55,1.40,1.19,1.15,0.98,1.01,1.11,1.20,1.26,1.32,1.43,0.95)
Purity_Level <- c(90.01,89.05,91.43,93.74,96.73,94.45,87.59,91.77,99.42,93.65,93.54,92.52,90.56,89.54,89.85,90.39,93.25,93.41,94.98,87.33)

Reg_data <- data.frame(Observation_Number,Hydrocarbon_Level,Purity_Level)
View(Reg_data)

# To summarize the data
summary(sd(Hydrocarbon_Level),var(Purity_Level),cor(Hydrocarbon_Level,Purity_Level))
# To check for relationship btwn Purity Level and Hydro Carbon Level
cor(Hydrocarbon_Level,Purity_Level)
# TO check the Variance
var(Purity_Level)
#Checking the covariance
cov(Hydrocarbon_Level,Purity_Level)
# Creating a linear model
res <- lm(Purity_Level ~Hydrocarbon_Level)

new <- summary(res)
# Creating a scatterplot
library(tidyverse)
ggplot(data=Reg_data)+
  geom_point(mapping=aes(x=Hydrocarbon_Level,y=Purity_Level))+
  labs(main="Scatterplot of Hydrocarbon Level Vs Purity Level")
# Adding a regression line to the scatterplot
plot(Hydrocarbon_Level,Purity_Level,col="orange")
abline(res,col=4,lwd=2)
# Plotting a box plot
boxplot(Purity_Level,main="Box Plot for Purity Level",ylim=c(85,100))
