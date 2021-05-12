#Deliverable 1

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
