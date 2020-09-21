#price is the response variable, y 
#need to figure out which explanatory variable, x to choose for the model 

plot(kc_house_data$yr_built,kc_house_data$price)
plot(kc_house_data$zipcode,kc_house_data$price)
plot(kc_house_data$sqft_living,kc_house_data$price) #good
plot(kc_house_data$sqft_lot,kc_house_data$price)
plot(kc_house_data$sqft_living15,kc_house_data$price) #good, 15?

plot(kc_house_data$condition,kc_house_data$price)

summary(lm(kc_house_data$price~kc_house_data$sqft_living)) #r2 = 0.49 
plot(lm(kc_house_data$price~kc_house_data$sqft_living))

summary(lm(kc_house_data$price~kc_house_data$bedrooms)) #r2 = 0.095

summary(lm(kc_house_data$price~kc_house_data$bathrooms)) #r2 = 0.27 #categorical 

summary(lm(kc_house_data$price~kc_house_data$sqft_lot)) #r2 = 0.008

summary(lm(kc_house_data$price~kc_house_data$floors)) #r2 = 0.066

summary(lm(kc_house_data$price~kc_house_data$waterfront)) #r2 = 0.07 #categorical 

summary(lm(kc_house_data$price~kc_house_data$view)) #r2 = 0.16

summary(lm(kc_house_data$price~kc_house_data$condition)) #r2 = 0.0013

summary(lm(kc_house_data$price~kc_house_data$grade))#r2 = 0.44 use factors here? 
plot(lm(kc_house_data$price~kc_house_data$grade))

summary(lm(price~factor(grade),data=kc_house_data))

summary(lm(kc_house_data$price~kc_house_data$sqft_above)) #r2 = 0.3667

summary(lm(kc_house_data$price~kc_house_data$sqft_basement)) #r2=0.1049

summary(lm(kc_house_data$price~kc_house_data$yr_built)) #r2 = 0.002917

summary(lm(kc_house_data$price~kc_house_data$yr_renovated)) #r2 = 0.01599

summary(lm(kc_house_data$price~kc_house_data$zipcode)) #r2 = 0.002831 #categorical 

summary(lm(kc_house_data$price~kc_house_data$lat)) #r2 = 0.09425

summary(lm(kc_house_data$price~kc_house_data$long)) #r2 = 0.0004677

summary(lm(kc_house_data$price~kc_house_data$sqft_living15)) #r2 = 0.3427

summary(lm(kc_house_data$price~kc_house_data$sqft_lot15)) #r2 = 0.006798
