cat("\014")
packages="datasets"
print("Training data:\n")
head(mtcars)
model<-lm(mpg~wt,data=mtcars)
plot(mtcars$wt,mtcars$mpg,main="Simple linear regression")
abline(model,col="red")
summary(model)
pred_mpg=predict(model,newdata=data.frame(wt=6))
cat("Mileages per galloons",pred_mpg)
coeff=model$coefficients
cat("Y intercept b(0)",coeff[1])
cat("Coefficient b(1)",coeff[2])
model<-lm(mpg~wt+hp,data=mtcars)
summary(model)
coeff=lm(mpg~wt+hp,data=mtcars)
coeff=lm(mpg~wt,data=mtcars)
coeff=lm(mpg~hp,data=mtcars)
x<-predict(model,newdata=data.frame(wt=2.5,hp=275))
x

