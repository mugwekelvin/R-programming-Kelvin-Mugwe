A <- cbind(c(1,2,7),c(2,4,6))
A
B <- cbind(c(10,30,50),c(20,40,60))
B

C <- 2/7

result <- (A-B)
result
C*result

A <- cbind(c(1,2,7))
B <- cbind(c(3,4,8))
# Perform multiplication
A%*%B
# M*N(1*3) and P*Q(1*3) to perform multiplication operation n=p since n*p is not equal multiplication cannot be done
# By transposing the matrix we get a result
t(A)%*%B
# B (transposed ) * (A * A transposed)
t(B)%*%(A%*%t(A))
# (A* A transposed)*B transposed
 C <- (A%*%t(A))
# Matrix C (2*3) and Matrix B transposed (1*3) since n!p hence multiplication cannot happen
 C%*%t(B)
 
 
