library(dplyr)


# Import MechaCar_mpg csv file
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

# Run lm test on data 
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_mpg))

#Read import and read in Suspension_Coil csv file
Suspension_coil <- read.csv("Suspension_Coil.csv")

#Create summary dataframe with mean, median, variance and sd of suspension coils's PSI column
total_summary <- summarize(Suspension_coil,Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI) )

#Create summary dataframe to group each manufacturing lot by the mean, median, variance and sd
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups='keep')


#preform t-test on each lot and compare to pop. mean of 1500
t.test(subset(Suspension_coil$PSI, Suspension_coil$Manufacturing_Lot=="Lot1"),mu=1500)
t.test(subset(Suspension_coil$PSI, Suspension_coil$Manufacturing_Lot=="Lot2"),mu=1500)
t.test(subset(Suspension_coil$PSI, Suspension_coil$Manufacturing_Lot=="Lot3"),mu=1500)


