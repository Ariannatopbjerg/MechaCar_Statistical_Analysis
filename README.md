# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

*Create a multiple linear regression model that predicts the mpg of MechaCar prototypes using all six variables.*

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
  Looking at Pr(>|t|) in Figure 1, all values greater then 0.05 show a non-random amount of variance: vehicle weight, spoiler angle, and AWD. 
  
- Is the slope of the linear model considered to be zero? Why or why not?
  
  The p-value in Figure 1 is less than 0.05, which for our case will indicate that the slope of the linear model is not zero.
  
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  Since the R-squared value is 0.71, about 71% of the time the model will predict mgp value correctly. The model is fairly effective, but there are probably other factors that were not captured in the dataset that might contribute to the mpg variability of these prototypes that should be looked at.
  
Figure 1. MPG Linear Regression Summary

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/Linear_Regress_summary_D1.PNG) 

## Summary Statistics on Suspension Coils

*Create two summary tables to visualize the mean, median, variance, and standard deviation for (1) all manufacturing lots as a whole and (2) for each lot individually.* 

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  Looking at Figure 2, the variance is about 62 PSI, indicating that all manufacturing lots combined do meet the design specifications. When looking at each lot individually (Figure 3), lot 3 is the only lot that does not meet the design specifications with having a variance value of 170 PSI, which exceeds 100 pounds per square inch.  

Figure 2. Total Summary Table

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/total_summary_D2.PNG)

Figure 3. Lot Summary Table

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_D2.PNG)

## T-Tests on Suspension Coils
*Determine if all manufacturing lots and each individuale lot are statistically different from the population mean of 1,500 pounds per square inch.*

Analyzing figures 4-7, the p-values for each t-test is greater than the significance level of 0.05. With this analysis, I would fail to reject that there is a statistical difference between the four groups and the population mean. 

Figure 4. T-Test for all manufacturing lots

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_all_D3.PNG)

Figure 5. T-Test for Lot 1

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot1_D3.PNG)

Figure 6. T-Test for Lot 2

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot2_D3.PNG)

Figure 7. T-Test for Lot 3

![](https://github.com/Ariannatopbjerg/MechaCar_Statistical_Analysis/blob/main/images/t_test_Lot3_D3.PNG)

## Study Design: MechaCar vs Competition

*Compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers*

### Address the following questions:

- What metric or metrics are you going to test?

  - mgp: fuel economy
  - horsepower
  - safety rating
  
- What is the null hypothesis or alternative hypothesis?
  
  Null Hypothesis: Each performance metric is statistically similar between the MechaCar vehicles and all vehicles from other manufacturers.
  
  Alternative Hypothesis: Each performance metric will be statistically different between the MechaCar vehicles and all vehicles from other manufacturers. 
  
- What statistical test would you use to test the hypothesis? And why?

  For this statisctical test, I would use a one-way ANOVA test. The test will analyze the differences among means for each metric across the different manufacturers.
  
- What data is needed to run the statistical test?
  
  I will need data of the MechaCar vehicles and the vehicles from other manufacturers that MechaCar vehicles are competing with. The metrics that will be tested across all manufactures will be placed in a single dataframe where each metric is its own column. This data can be scraped from various vehicle sources using APIs. 
