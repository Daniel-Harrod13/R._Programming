library(dplyr)
### D1 ###
# Import Data
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Perform Linear regression to Predict mpg of prototypes.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
### D2 ###
# Import Suspension data
sus_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#Create Summary DataFrame
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI),Varience = var(PSI), SD = sd(PSI))
# Create Manufacturing Lot Summary
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Varience = var(PSI), SD = sd(PSI))
### D3 ###
# Determine if PSI across ass lots is statistically Different from the population mean of 1500 pounds per square in.
t.test(sus_coil$PSI, mu = 1500)
# Determine if PSI for Each Manufacturing Lot is Statistically different from the population mean of 1500 pounds per square in.
Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)
