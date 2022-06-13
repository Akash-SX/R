head(mtcars,31)
co=cov(mtcars$wt,mtcars$mpg)
print("covariance matrix")
print(co)
cc=cor(mtcars$wt,mtcars$mpg)
print("pearson's correlation coefficients")
print(cc)
ccs=cor(mtcars$wt,mtcars$mpg,method = "spearman")
print("Spearman's correlation coefficients")
print(ccs)
scatter.smooth(mtcars$wt,mtcars$mpg,main="scatterplot",xlab = "Weight",ylab = "Mileage")
if(cc>0)
{
  print("Relationship b/w Mileage and Weight is positive")
}
else
{
  print("Relationship b/w Mileage and Weight is negative")
}
