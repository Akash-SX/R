sdata<-read.table(file.choose(),sep = ",",header=TRUE)
head(sdata)
nrow(sdata)
ncol(sdata)
result=vector(mode="character",length=0)
for (i in 1:(sdata))
{
  if(sdata$m1[i]>50&&sdata$m2[i]>50&&sdata$m3[i]>50&&sdata$m4[i]>50&&sdata$m5[i]>50)
  {
    status<-pass
  }
  else
  {
    status<-fail
  }
  result<-append(result,status)
}
Total=sdata$m1+sdata$m2+sdata$m3+sdata$m4+sdata$m5
ptge=Total/5
tdata<-cbind(sdata,Total,ptge)
tdata
