attach(LungCapData)
summary(LungCapData)
cor(LungCapData$Age,LungCapData$LungCap)
plot(Age,LungCap,main="Age Versus Lung Capacity",col=2)
mod <- lm(LungCap ~ Age)
#To get the summary
summary(mod)
#TO get the attributes 
attributes(mod)
#To be able to get the coefficients of the data
mod$coefficients
#To draw a regression line to the data
abline(mod,col=4,lwd=3)
#TO get the confidence intervals for our data
confint(mod)
#To change the confidence level
confint(mod,level=0.99)
#TO print the anova table we use the anova command
anova(mod)