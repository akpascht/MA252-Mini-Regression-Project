#Part 3, log transformations and regression analysis

#price vs sqft_living
#natural log (+1) of price
lnprice<-log(kc_house_data$price + 1)
hist(lnprice)
boxplot(lnprice)

#sqft living vs ln price
summary(lm(lnprice~kc_house_data$sqft_living))
plot(lm(lnprice~kc_house_data$sqft_living))
plot(kc_house_data$sqft_living,lnprice)

#natural log of sqft living
lnsqft<-log(kc_house_data$sqft_living + 1)
hist(lnsqft)
boxplot(lnsqft)

#regression, ln price vs ln sqft living
plot(lnsqft,lnprice) #looks good
summary(lm(lnprice~lnsqft)) 
plot(lm(lnprice~lnsqft))  #qq plot looks really good
plot(lnsqft,lnprice)

#price vs sqft_living15
lnsqft15<-log(kc_house_data$sqft_living15 + 1)
hist(lnsqft15)

#regression
plot(lnsqft15,lnprice)
summary(lm(lnprice~lnsqft15)) #lower r squared 
plot(lm(lnprice~lnsqft15)) #plots look good though 

#price vs zipcode 
plot(kc_house_data$zipcode,lnprice)
summary(lm(lnprice~kc_house_data$zipcode))
plot(lm(lnprice~kc_house_data$zipcode))

#price vs bathrooms 
lnbathrooms<-log(kc_house_data$bathrooms +1)
summary(lm(lnprice~lnbathrooms))
plot(lnbathrooms,lnprice)
hist(lnbathrooms)


plot(kc_house_data$bathrooms,lnprice)
summary(lm(lnprice~kc_house_data$bathrooms))
plot(lm(lnprice~kc_house_data$bathrooms))

#natural log transformation to see if it helps
lnbathrooms<-log(kc_house_data$bathrooms + 1)
hist(kc_house_data$bathrooms) 
hist(lnbathrooms) #not sure that helped 

plot(lnbathrooms,lnprice)
summary(lm(lnprice~lnbathrooms)) #r2 is smaller 
plot(lm(lnprice~lnbathrooms)) #qq looks ok 
