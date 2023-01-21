library(dplyr)

mecha_mpg <- read.csv('MechaCar_mpg.csv')

l_reg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length, data=mecha_mpg)

reg_sum <- summary(l_reg)
