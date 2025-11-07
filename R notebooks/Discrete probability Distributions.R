# Probability in R
x.outcome <- c(-4,0,1,8)
x.prob <- c(0.32,0.48,0.15,0.05)
# Plotting the PDF
barplot(x.prob,ylim=c(0,5),main="PDF of X",xlab="X",ylab="P(X==x)",space=0,names.arg = x.outcome)
# Plotting the CDF
x.cum <- cumsum(x.prob)
barplot(x.cum,ylim=c(0,1),xlab="x",names.arg = x.outcome,ylab="P(X==x)",main="CDF of X",space=0)
# Calculating the Mean and Varaiance of a Discrete Random Sample
#Mean also known as Expectation  -> E(X)  -> sum(P(X==x)*x)
#variance -> Var(X)=(E(X)^2)-(E(X))^2
#Variance -> Var(X)=1/n-1((x-mean)*(P(X==x)))

# Now Calculating the Mean
# E(X)= sum(x.p(X==x))\
E_X <- sum(x.outcome*x.prob)
E_X
# Calculating Variance
# Var(X)=(E(X)^2)-(E(X))^2
Var_x <- sum((x.outcome)^2*x.prob)-(E_X)^2
Var_x
# Calculating the Standard Deviation
sd_x <- sqrt(Var_x)

