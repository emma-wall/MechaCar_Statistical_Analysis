# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
I ran an lm test in R to determine if there are a relationship between mpg and the other variables in the dataset (vehicle length, vehicle weight, spoiler angle, ground clearance and ADW). 

  H0: Slope of the linear model is 0 and there is no correlation betweeen MPG and vehicle length, vehicle weight, spoiler angle, ground clearance and ADW. 

  Ha: Slope of the linear model is not 0 and there is a correlation between MPG and the other varaibles. 

![Screen Shot 2021-07-31 at 1 03 58 PM](https://user-images.githubusercontent.com/80648379/127776913-ae0a7353-2307-4c3b-a106-f3f8dfded507.png)

The lm test shows us that both vehicle length and ground clearance provide a non-random amount of variance to mpg in the dataset. The p-value is 5.35e-11, since that is less than the 0.05 threshold, we can reject the null hypothesis, that the slope of the linear modle is 0 and there is no correlation between MPG and the other variables. The r-squared value is 0.72, which means that 72% of variability of mpg is explained using this linear model. Since the r-squared value if greater than 0.7, we can say that the model effectively preditcts the mpg of MechCare prototypes. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When just looking at the variance of the whole dataset, it seems as if the dataset meets the above criteria. However, when the data is broken up by manufacturing lot, we can see that the coils manufactured in Lot 3 do not meet that criteria. 

![Screen Shot 2021-08-01 at 9 34 20 PM](https://user-images.githubusercontent.com/80648379/127793260-508b206b-ebdf-45dc-abb9-2982456dc742.png)
