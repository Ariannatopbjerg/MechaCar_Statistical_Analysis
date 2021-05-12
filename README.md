# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
  Looking at Pr(>|t|) in Figure 1, all values greater then 0.05 show a non-   random amount of variance: vehicle weight, spoiler angle, and AWD. 
  
- Is the slope of the linear model considered to be zero? Why or why not?
  
  The p-value in Figure 1 is less than 0.05, which for our case will           indicate that the slope of the linear model is not zero.
  
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  Since the R-squared value is 0.71, about 71% of the time the model will     predict mgp value correctly. The model is fairly effective, but there are   probably other factors that were not captured in the dataset that might     contribute to the mpg variability of these prototypes that should be         looked at.
  
Figure 1
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/Linear_Regress_summary_D1.PNG) 

## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
-
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/total_summary_D2.PNG)
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_D2.PNG)
## T-Tests on Suspension Coils
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_all_D3.PNG)
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot1_D3.PNG)
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot2_D3.PNG)
![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot3_D3.PNG)
