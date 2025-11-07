#Normal Population
#Prob X >=85
pnorm(q=85,mean=75,sd=5,lower.tail = F)
#Prob Z>=1,the lower.tail=F gives us the area to the right
pnorm(q=1,mean=0,sd=1,lower.tail = F)
# We use qnorm to find quantiles
qnorm(p=0.25,mean=75,sd=5,lower.tail=T)
# To generate a sequence of numbers
x <- seq(from=55,to=90,by=0.25)
x

# To find the values of the probability density Function
dens <- dnorm(x,mean=75,sd=5)
plot(x,dens)
# To have a line curve
plot(x,dens,type="l")
# To add a Title
plot(x,dens,type="l",main="Normal curve of data with mean =75,sd=5",xlab="x",ylab="dens")
# To add a Vertical Line at mean of 75
abline(v=75,col=4)
# To draw a sample of 40 observations in the data
rand <- rnorm(n=40,mean=75,sd=5)
# Plotting a histogram
hist(rand)