# Matrices in R
a <- matrix(data = c(1,2,3,4),ncol=2,nrow=2)
# Change order of arrangement from by coloumn to by row
b <- matrix(data = c(1,2,3,4,5,6),ncol=3,nrow=2,byrow=FALSE)
# change order of arrangemenmt by using byrow=true
c <- matrix(data = c(1,2,3,4,5,6),ncol = 3,nrow = 2,byrow = TRUE)
# Retrieve data from a matrix
c[2,2]
# To retrieve data from coloumn 1 from a matrix
c[,1]
# To retrieve data from row 1 from a matrix
c[1,]
# To retrieve data from coloumn 1 and 2 
c[,1:2]
# To return the main diagonal we use Diag function
z <- diag(x=c)
# Matrix Transpose
 d <- rbind(c(1,2,3),c(7,2,5))
 # To transpose
 e <- t(d)
# using transpose to find original matrix
 t(e)
 # To generate an identity matrix with three diagonal elements
  f <- diag(x=3)
# To generate an identity matrix with four diagonal elements
  g <- diag(x=4)
  g
  # Scalar multiplication 
h <- rbind(c(2,5,2),c(6,1,4))
h
i <- 2
i*h
# Matrix addition and subtraction
A <- cbind(c(2,5,2),c(6,1,4))
A

B <- cbind(c(-2,3,6),c(8.1,8.2,-9.8))
B
# To perform subtraction
A-B
# TO perform addition
A+B
# Matrix Multiplication
# In order to multiply two matrices A and B of size m*n and p*q  it must be true that n=p
# The resulting matrix will be of size m*q
 D <- rbind(c(2,5,2),c(6,1,4))
 E <- cbind(c(3,-1,1),c(-3,1,5))
 # to perform multiplication
 D%*%E
 # You can demonstrate non-commutative aspect in matrices where when we change order of one matrix it gives a different result
 E%*%D
 # Matrix Inversion
  C <- rbind(c(3,1),c(4,2))
  # inverse of C 
  solve(C)
  # Determinant of C 
  det(C)
  #proof that multiplication of two matrices(Determinant Matrix and Matrix Itself)equals an identity matrix
  C%*%solve(C)