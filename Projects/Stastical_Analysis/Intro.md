# MechaCar_Statistical_Analysis
## Project Overview
In this project, we used R. to analyze production data for AutoRUs's newest vehicle prototype MechaCars. The prodution team has asked us to analyze perfromance of the prototype across all of their manufacturing lots. The metrics of the vehicle we analyzed were the Vehicle Length, weight, spoiler angle, ground clearance, AW capabilites, MPG, and PSI.
## Linear Regression for MPG prediction
1. Varience to determine a non-random variable is amost often 0. Due to this, we can see that intercept, vehicle_length, amd ground clearance, coeeffcients are proven to be a non-random amount of variance in regards to miles per gallon or mpg.
2. At this time we can reject the null hypothesis because of the value size of the p-value. Null hypothesis states that slope is equal to 0. since we are rejecting the nulll hypothesis, we are stating that the slope is not equal to zero.
3. R-squared is known to increase that more varaibles are moved or placed in the regression. However, when we adjust the r-squard agasint the increase, penalties are added for the predicotrs in the model, thus creating a more accurate predictions on the effectiveness of the linear model. The adjusted R-square of 0.6825 shows us that this model can accurately predict the MPG of the vehicle protoype in a reltively well manner.

## Summary of Suspension Coil
The varience totals found for the data on suspension coils shows that the manufacturing data reachs the limitation at the adequate level of 100 lbs per square inch. When seperated into the three Manufacturting Lots however, we see that lot three has a much higher varience at 170.2861224. These lots were chosen at random in the data set, but there is a posiibilty that Lot 3 is not meeting requirments for their susoension coil requirments.
## Sample T-test on Entire Lot
When running our t-test for the entire Lot as a whole we find a signifigance level of 0.05. This means we cannot reject the null hypothesis since we see a p-value of 1.
## Smaller Lot T-test
### Lot 1 
With a p-value of 1, and a siginficance level of 1, we fail to reject the null hypothesis.
### Lot 2
With a p-value of 0.6072, and a signifigance 0.05 we fail to reject the null hypothesis.
### Lot 3
With a p-value of 0.04168 and a significance of 0.05, we can reject the null hypothesis. We also see that the mean of this sample is srikingly low. It also does not show the predicted population mean.
