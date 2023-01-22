# MechaCar_Statistical_Analysis
 
## Linear Regression to Predict MPG

![image](/images/linear_reg_mpg.png)

After performing multiple linear regression on the MechaCar vehicle metrics with respect to MPG (miles per gallon), two variables display high variance (ground_clearance and vehicle_length), and one displays slight variance (vehicle_weight). The summary of the regression model can be viewed in the above image.

The slope of the model should be non-zero, since some of the variables are the cause of significant variance in MPG. To the extent that the r-squared value reflects a good fit, it seems like the model predicts MechaCar MPG effectively.

## Summary Statistics on Suspension Coils

![image](/images/coil_sum.png)
![image](/images/lot_sum.png)

### Does the variance exceed 100 PSI in any case?

The variance exceeds 100 PSI only in the case of manufacturing lot 3. Lots 1 and 2 show relatively low variance, but lot 3 has a score of 170. This is an order of magnitude greater than that of the other two lots.