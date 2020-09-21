#Part 4
#prediction intervals

#regression of natural log of price and natural log of sqft living
model1<-lm(lnprice~lnsqft)
model1
summary(model1)

#calculating prediction intervals for the log of three square foot values 
saleprice<-predict(model1,newdata = data.frame(lnsqft=c(log(1427),log(1910),log(2550))),interval="prediction")
saleprice

#raising the prediction invervals to transform back the natural log of price 
intervals<-exp(saleprice)
intervals

             
                   
