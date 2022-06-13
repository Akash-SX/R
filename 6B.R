mvtrain<-function(hwdata)
{
  nd=2
  hv=vector(mode="numeric",length=0)
  wv=vector(mode="numeric",length=0)
  pv=vector(mode="numeric",length=0)
  hmin=min(hwdata[,1])-15
  hmax=max(hwdata[,1])+15
  wmin=min(hwdata[,2])-15
  wmax=max(hwdata[,2])+15
  mv=colMeans(hwdata);
  cv=cov(hwdata);
  cat("Mean Vector",mv)
  cat("Covariance height",cv)
  for (h in hmin:hmax)
  {
    for (w in wmin:wmax)
      {
      d=c(h,w)-mv
      r=((t(d))%*%(solve(cv)))%*%(d)
      p=1/(2*pi*sqrt(det(cv)))*exp(0.5)*r
      hv<-c(hv,h)
      wv<-c(wv,w)
      pv<-c(pv,p)
    }
  }
  install.packages("rgl",dependencies = TRUE)
  library(rgl)
    plot3d(x=hv,y=wv,z=pv,xlab="height",ylab="weight",zlab="p(h,w)",col="red")
    return(mvdata=data.frame(mv=mv,cv=cv))
}
mvtest<-function(mvdata,hwdata)
{
  mv=mvdata$mv
  cv=cbind(mvdata$cv.1,mvdata$cv.2)
  d=hwdata-mv
  r=((t(d))%*%(solve(cv)))%*%(d)
  pt=1/(2*pi*sqrt(det(cv)))*exp(0.5)*r
  if(pt>=0.00005)
    print("The height of person is adult")
  else
    print("The height of person is not an adult")
}
cat("\014")
hwdata<-cbind(c(160,155,170,168,158,178,164),c(55,66,77,64,70,50,68))
mvdata=mvtrain(hwdata)
ht=as.numeric(readline(prompt = "enter the height of person="))
wt=as.numeric(readline(prompt = "enter the weight of person="))
hwdata=c(ht,wt)
mvtest(mvdata,hwdata)

