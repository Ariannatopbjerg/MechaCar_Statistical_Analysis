#DELIVERABLE 1

#Load packages
library(tidyverse)
library(dplyr)

#Import and read file as a dataframe
MechaCar <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCar)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#Perform summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))

#DELIVERABLE 2

#Import and read file as a dataframe
Suspension <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(Suspension)

#Creat total summary dataframe
total_summary <- Suspension %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Creat a lot summary dataframe
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#DELIVERABLE 3

#Perform t.test() to determine if the PSI across... statistically diff from the pop mean of 1500 lbs/sq in.
#...all manufacturing lots.. 
t.test(Suspension$PSI, mu = 1500)
#...Lot 1...
t.test(subset(Suspension,Manufacturing_Lot=='Lot1')$PSI, mu = 1500)
#...Lot 2...
t.test(subset(Suspension,Manufacturing_Lot=='Lot2')$PSI, mu = 1500)
#...Lot 3...
t.test(subset(Suspension,Manufacturing_Lot=='Lot3')$PSI, mu = 1500)
