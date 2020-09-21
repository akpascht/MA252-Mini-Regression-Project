#Part 3 - determing the best model
#comparing price (response variable) with various explanatory variables 
#sqft living, sqft living 15, zip code,bathrooms, grade, and condition

#sqft living
plot(kc_house_data$sqft_living,kc_house_data$price)

#sqft living 15
plot(kc_house_data$sqft_living15,kc_house_data$price)

#zip code 
kc_house_data$zipcode <- as.factor(kc_house_data$zipcode)
plot(kc_house_data$zipcode,kc_house_data$price) 

#bathrooms
plot(kc_house_data$bathrooms,kc_house_data$price)

#grade
kc_house_data$grade <- as.factor(kc_house_data$grade)
plot(kc_house_data$grade,kc_house_data$price) 

#condition
kc_house_data$condition <- as.factor(kc_house_data$condition)
plot(kc_house_data$condition,kc_house_data$price)

#singular regressions for each

#sqft living
summary(lm(kc_house_data$price~kc_house_data$sqft_living))
plot(lm(kc_house_data$price~kc_house_data$sqft_living))

#sqft living 15
summary(lm(kc_house_data$price~kc_house_data$sqft_living15))

#zip code
summary(lm(kc_house_data$price~kc_house_data$zipcode))

#bathrooms
summary(lm(kc_house_data$price~kc_house_data$bathrooms))

#grade
summary(lm(kc_house_data$price~kc_house_data$grade))

#condition
summary(lm(kc_house_data$price~kc_house_data$condition))

#Multiple Regression
part3<- lm(price~sqft_living+sqft_living15+factor(zipcode)+bathrooms+factor(grade)+factor(condition),data=kc_house_data)
summary(part3)
plot(part3)
#so far, sqft living, sqft living15, zip code, bathrooms are proving to be the most significant 
#if we can look at the outliers and do some log transformations, the model will likely improve

#Multiple Regression and Interactions
part3a<- lm(price~sqft_living*sqft_living15*factor(zipcode)*bathrooms,data=kc_house_data)
summary(part3a)
plot(part3a)
#r squared improved from 0.7 to 0.8, but the equation is extremely complicated

#playing around with different combinations
summary(lm(price~sqft_living*sqft_living15*zipcode*bathrooms,data=kc_house_data))
summary(lm(price~sqft_living*sqft_living15*grade,data=kc_house_data))
summary(lm(price~sqft_living+sqft_living15+zipcode+bathrooms,data=kc_house_data))
summary(lm(price~sqft_living+sqft_living15+bathrooms,data=kc_house_data))
summary(lm(price~sqft_living+sqft_living15+zipcode,data=kc_house_data))
summary(lm(price~sqft_living+sqft_living15+grade,data=kc_house_data)) 
