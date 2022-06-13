A<-matrix(c(5,6,7,8),nrow=2,ncol=2,byrow="TRUE")
B<-matrix(c(3,5,7,9),nrow=2,ncol=2,byrow="FALSE")
C<-rbind(c(1,2,3),c(4,5,6))
D<-cbind(c(6,4,2),c(9,6,3))
print("Matrix of A")
A
print("Matrix of B")
B
print("Matrix of C")
C
print("Matrix of D")
D
print("Resultant Matrix")
print("Addition of matrices")
A+B
print("subraction of matrices")
A-B
print("scalar multiplication of A")
3*A
print("multiplication of c n D")
C%*%D
print("Diagonal matrix")
diag(A)
cat("Transpose of A")
t(A)
cat("Inverse of B")
solve(B)
