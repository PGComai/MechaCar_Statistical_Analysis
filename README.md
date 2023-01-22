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

## T-Tests on Suspension Coils

### T-test of all lots vs population mean of 1500 PSI
![image](/images/t_test.png)

### Lot 1
![image](/images/t_test1.png)

### Lot 2
![image](/images/t_test2.png)

### Lot 3
![image](/images/t_test3.png)

For a 95% confidence interval only lot 3 shows a statistically significant deviation from the population mean.

## Study Design: MechaCar vs Competition

###Task: Design a study to quantify MechaCar performance against competition.

Car metrics of interest to the buyer:
- Price
- Efficiency
- Reliability
- Safety

For each of these metrics, competitor car data would be collected to create a comprehensive vehicle database. I don't think random sampling would be needed since there are only so many cars, all of which have publicly available data concerning our metrics, so creating a database that comprises most, if not all, of the competitor population should be possible.

The data would be grouped by price to enable comparisons of MechaCar metrics to multiple cost-classes of vehicle. Efficiency, reliability, and safety would

