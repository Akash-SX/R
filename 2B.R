print("enter the size of A matrix")
m=as.integer(readline(prompt='m='))
n=as.integer(readline(prompt='n='))
asize<-m*n
avec=vector(mode="integer",length=0)
for (i in 1:asize)
{
  mv1=as.integer(readline())

  avec<-c(avec,mv1)
}
A<-matrix(data=avec,nrow=n,ncol=n,byrow="TRUE")
print("enter the size of B matrix")
p=as.integer(readline(prompt = 'p='))
s=as.integer(readline(prompt = 's='))
bsize<-p*s
bvec=vector(mode="integer",length=0)
for (i in 1:bsize)
{
  mv2=as.integer(readline())
  bvec<-c(bvec,mv2)
}
B<-matrix(data=bvec,nrow=n,ncol=n,byrow="TRUE")
print("Matrix of A")
A
print("Matrix of B")
B
print("Resultant Matrix")
print("Addition of matrices")
A+B
print("subraction of matrices")
A-B
print("scalar multiplication of A")
3*A
print("multiplication of A and B")
A%*%B
print("Diagonal matrix")
diag(A)
cat("Transpose of A")
t(A)
cat("Inverse of B")
solve(B)

