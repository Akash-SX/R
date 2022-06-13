head(iris[1:5,])
head(iris[51:55,])
head(iris[101:105,])
iris.nospecies<-iris[,-5]
coi=cov(iris.nospecies)
print("covariance matrix")
print(coi)
cci=cor(iris.nospecies)
print("pearson's correlation coefficients")
print(cci)
ccs=cor(iris.nospecies,method = "spearman")
print("Spearman's correlation coefficients")
print(ccs)
install.packages("ggplot2")
library(ggplot2)
qplot(Species,Petal.Length,data=iris,geom = "boxplot",fill=Species)
qplot(Petal.Length,data=iris,geom = "density",alpha=I(.7),fill=Species)
if(cci[4,1]>0)
{
  print("Relationship b/w petal length and sepal length is positive")
}
else
{
  print("Relationship b/w petal length and sepal length is negative")
}
if(cci[2,1]>0)
{
  print("Relationship b/w sepal width and sepal length is positive")
}
else
{
  print("Relationship b/w sepal width and sepal length is negative")
}
install.packages("corrgram")
library(corrgram)
corrgram(iris,lower.panel=panel.conf,upper.panel=panel.pts)
corrgram(iris,lower.panel=panel.pie,upper.panel=panel.pts,diag.panel=panel.density,main=paste0("Corrgram of petal and sepal","measurements in the dataset"))

