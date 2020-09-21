#Part 2 - exploratory data analysis 
#price
summary(kc_house_data$price)
plot(kc_house_data$price) #scatterplot
boxplot(kc_house_data$price) #boxplot
hist(kc_house_data$price) #histogram, skewed right

#sqft_living
summary(kc_house_data$sqft_living)
plot(kc_house_data$sqft_living) #scatterplot
boxplot(kc_house_data$sqft_living) #boxplot
hist(kc_house_data$sqft_living) #histogram, skewed right

#sqft_living15
summary(kc_house_data$sqft_living15) #similar to sqft_living BUT the max value is much less 
plot(kc_house_data$sqft_living15) #scatterplot
boxplot(kc_house_data$sqft_living15) #boxplot
hist(kc_house_data$sqft_living15) #histogram, skewed right, but not as drastically as sqft_living

#bathrooms
summary(kc_house_data$bathrooms)
plot(kc_house_data$bathrooms) #scatterplot
boxplot(kc_house_data$bathrooms) #boxplot
hist(kc_house_data$bathrooms) #histogram, skewed right

#grade
summary(kc_house_data$grade)
plot(kc_house_data$grade) #scatterplot
boxplot(kc_house_data$grade) #boxplot
hist(kc_house_data$grade) #histogram, normal 

#zipcode, this one is tricky since it is categorical
summary(kc_house_data$zipcode)
plot(kc_house_data$zipcode) #scatterplot
boxplot(kc_house_data$zipcode) #boxplot
hist(kc_house_data$zipcode) #histogram, normal 


#bedrooms, not much to work with here
summary(kc_house_data$bedrooms)
plot(kc_house_data$bedrooms) #scatterplot
boxplot(kc_house_data$bedrooms) #boxplot
hist(kc_house_data$bedrooms) #histogram

#sqft_lot
summary(kc_house_data$sqft_lot)
plot(kc_house_data$sqft_lot) #scatterplot, no pattern
boxplot(kc_house_data$sqft_lot) #boxplot
hist(kc_house_data$sqft_lot) #histogram, very little here to work with

#sqft_lot15
summary(kc_house_data$sqft_lot15)
plot(kc_house_data$sqft_lot15) #scatterplot
boxplot(kc_house_data$sqft_lot15) #boxplot
hist(kc_house_data$sqft_lot15) #histogram

#floors
summary(kc_house_data$floors)
plot(kc_house_data$floors) #scatterplot
boxplot(kc_house_data$floors) #boxplot
hist(kc_house_data$floors) #histogram

#sqft_above
summary(kc_house_data$sqft_above)
plot(kc_house_data$sqft_above) #scatterplot, linear pattern somewhat
boxplot(kc_house_data$sqft_above) #boxplot
hist(kc_house_data$sqft_above) #histogram, skewed right, similar to sqft_living

#sqft_basement
summary(kc_house_data$sqft_basement)
plot(kc_house_data$sqft_basement) #scatterplot
boxplot(kc_house_data$sqft_basement) #boxplot
hist(kc_house_data$sqft_basement) #histogram

#view
summary(kc_house_data$view)
plot(kc_house_data$view) #scatterplot
boxplot(kc_house_data$view) #boxplot
hist(kc_house_data$view) #histogram

#condition
summary(kc_house_data$condition)
plot(kc_house_data$condition) #scatterplot
boxplot(kc_house_data$condition) #boxplot
hist(kc_house_data$condition) #histogram

#yr_built
summary(kc_house_data$yr_built)
plot(kc_house_data$yr_built) #scatterplot
boxplot(kc_house_data$yr_built) #boxplot
hist(kc_house_data$yr_built) #histogram, not normal

#yr_renovated, not many have been renovated
summary(kc_house_data$yr_renovated)
plot(kc_house_data$yr_renovated) #scatterplot
boxplot(kc_house_data$yr_renovated) #boxplot
hist(kc_house_data$yr_renovated) #histogram

#lat
summary(kc_house_data$lat)
plot(kc_house_data$lat) #scatterplot
boxplot(kc_house_data$lat) #boxplot
hist(kc_house_data$lat) #histogram

#long
summary(kc_house_data$long)
plot(kc_house_data$long) #scatterplot
boxplot(kc_house_data$long) #boxplot
hist(kc_house_data$long) #histogram

