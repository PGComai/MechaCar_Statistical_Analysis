library(dplyr)

mecha_mpg <- read.csv('MechaCar_mpg.csv')

l_reg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length, data=mecha_mpg)

reg_sum <- summary(l_reg)

# Call:
#   lm(formula = mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + 
#        vehicle_length, data = mecha_mpg)
# 
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -19.4701  -4.4994  -0.0692   5.4433  18.5849 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
#   AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
# ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
#   spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
# vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
# vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 8.774 on 44 degrees of freedom
# Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
# F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

mecha_coils <- read.csv('Suspension_Coil.csv')


coil_sum <- mecha_coils %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),
                                      stdev=sd(PSI))
coil_lot_groups <- mecha_coils %>% group_by(Manufacturing_Lot)

lot_sum <- coil_lot_groups %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),
                                         stdev=sd(PSI))
tt1 <- t.test(mecha_coils$PSI, mu=1500)

# thanks to https://bookdown.org/ndphillips/YaRrr/t-test-t-test.html

ttl1 <- t.test(formula=PSI ~ 1, data=mecha_coils, mu=1500, subset=Manufacturing_Lot=='Lot1')

ttl2 <- t.test(formula=PSI ~ 1, data=mecha_coils, mu=1500, subset=Manufacturing_Lot=='Lot2')

ttl3 <- t.test(formula=PSI ~ 1, data=mecha_coils, mu=1500, subset=Manufacturing_Lot=='Lot3')
