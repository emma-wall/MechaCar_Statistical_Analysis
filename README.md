# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
I ran an lm test in R to determine if there are a relationship between mpg and the other variables in the dataset (vehicle length, vehicle weight, spoiler angle, ground clearance and ADW). 

  H0: Slope of the linear model is 0 and there is no correlation betweeen MPG and vehicle length, vehicle weight, spoiler angle, ground clearance and ADW. 

  Ha: Slope of the linear model is not 0 and there is a correlation between MPG and the other varaibles. 

![Screen Shot 2021-07-31 at 1 03 58 PM](https://user-images.githubusercontent.com/80648379/127776913-ae0a7353-2307-4c3b-a106-f3f8dfded507.png)

The lm test shows us that both vehicle length and ground clearance provide a non-random amount of variance to mpg in the dataset. The p-value is 5.35e-11, since that is less than the 0.05 threshold, we can reject the null hypothesis, that the slope of the linear modle is 0 and there is no correlation between MPG and the other variables. The r-squared value is 0.72, which means that 72% of variability of mpg is explained using this linear model. Since the r-squared value if greater than 0.7, we can say that the model effectively preditcts the mpg of MechCare prototypes. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When just looking at the variance of the whole dataset, it seems as if the dataset meets the above criteria. However, when the data is broken up by manufacturing lot, we can see that the coils manufactured in Lot 3 do not meet that criteria, with a variance of 170.89

![Screen Shot 2021-08-01 at 9 34 20 PM](https://user-images.githubusercontent.com/80648379/127793260-508b206b-ebdf-45dc-abb9-2982456dc742.png)

## T-Tests on Suspension Coils

I ran t-tests on the PSI of each manufacuring lot against a population mean of 1500. For each test the null and alternative hypotheses are as follows: 

H0: There is no statistical difference between the sample PSI mean and the presumed PSI population mean
Ha: There is a statisitcal difference between the sample PSI mean the the presumed PSI population mean

### Lot 1
![Screen Shot 2021-08-01 at 9 46 00 PM](https://user-images.githubusercontent.com/80648379/127794648-af710b9b-65fe-4f5c-bb39-0bcf2902ded4.png)

For Lot 1, the p-value is 1, which means that we cannot reject the null hypothesis that there is no statisical difference between the sample mean and the presumed population mean, given a 0.05 significance level. 

### Lot 2
![Screen Shot 2021-08-01 at 9 46 26 PM](https://user-images.githubusercontent.com/80648379/127794929-8a86e4b0-48d7-406d-928e-a47a4e9671d0.png)

Given a p-value of 0.61, we again we fail to reject the null hypothesis at a 0.05 significance level. The Lot 2 mean and population mean of 1,500 are statistically similar. 

### Lot 3
![Screen Shot 2021-08-01 at 10 09 36 PM](https://user-images.githubusercontent.com/80648379/127795364-da2229e2-7a30-4afa-9f03-9c894d0d18e6.png)

For Lot 3, we get a p-value of 0.042. We can reject the null hypothesis at a 0.05 signifigance level, which means there is a statistical difference between the PSI Lot 3 mean and the PSI population mean of 1500. 
