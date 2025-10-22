setwd("C:\\Users\\Dell\\Downloads\\Lab 10")
getwd

## Lab Exercise 10- Chi Squared Tests -- Week 13

##Q1

##Part 01
# Null hypothesis (H0): Customers choose the four snack types (A, B, C, D) with equal probability (pA = pB = pC = pD = 1/4).
# Alternative hypothesis (H1): Customers do not choose the four snack types with equal probability (at least one probability differs).
observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

##Part 02

file_path <-  "http://www.sthda.com/sthda/RDoc/data/housetasks.txt" 

housetasks <- read.delim(file_path, row.names =  1)
housetasks

chisq <- chisq.test(housetasks)
chisq

##Part 03

# The chi-squared statistic is 6.5 with 3 degrees of freedom, and the p-value is approximately 0.0897.
# Since the p-value (0.0897) is greater than the significance level of 0.05, we fail to reject the null hypothesis.
# Conclusion: There is insufficient evidence to suggest that customers do not choose the snack types with equal probability. The vending machine owner's claim is supported by the data.